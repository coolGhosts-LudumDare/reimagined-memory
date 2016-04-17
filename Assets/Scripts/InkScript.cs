using System;
using UnityEngine;
using Ink.Runtime;
using UnityEditor;
using UnityEngine.UI;

public class InkScript : MonoBehaviour
{
    public TextAsset InkAsset;
    [SerializeField]
    private TextAsset namesInkAsset;
    private static Story inkStory;

    private string[] names;

    private char[] commandSeparator = { ' ' };
    private char[] nameSeparator = { ':' };
   
    private Sprite[] backgrounds;
    
    private SpriteRenderer backgroundSprite;
    private GameObject namePanel;
    private Text namePanelText;
    [SerializeField]
    private Text DialogText;
    private Button[] ChoiceButtons;
    private Text[] ChoiceTexts;

    public void Awake ()
    {
        if (backgrounds == null)
        {
            backgrounds = Resources.LoadAll<Sprite>("Backgrounds");

            var backgroundGameObject = GameObject.Find("Background");
            backgroundSprite = backgroundGameObject.GetComponent<SpriteRenderer>();
        }

        if (names == null)
        {
            inkStory = new Story(namesInkAsset.text);
            getNames();

            namePanel = GameObject.Find("Name");
            namePanelText = namePanel.GetComponentInChildren<Text>();
            namePanel.SetActive(false);

            inkStory = null;
        }

        if (inkStory == null)
        {
            inkStory = new Story (InkAsset.text);
        }

        // get texts from buttons, so we don't have to keep finding them
        var choiceContainer = GameObject.Find("Choices");
        ChoiceButtons = choiceContainer.GetComponentsInChildren<Button>();
        ChoiceTexts = choiceContainer.GetComponentsInChildren<Text>();
    }

    private float MeasureStringWidth(Text text, string str)
    {
        var width = 0f;

        foreach (var chr in str)
        {
            CharacterInfo info;
            text.font.GetCharacterInfo(chr, out info, text.fontSize);

            width += info.advance;
        }
        
        return width;
    }

    private void SetSpeaker(string name)
    {
        if (string.IsNullOrEmpty(name))
        {
            namePanel.SetActive(false);
            return;
        }

        if (namePanelText.text == name)
            return;

        var rectTransform = namePanel.GetComponent<RectTransform>();
        var nameWidth = MeasureStringWidth(namePanelText, name);
        var width = 780 - (nameWidth + 30);
        rectTransform.offsetMax = new Vector2(-width, rectTransform.offsetMax.y);
        
        namePanel.SetActive(true);
        namePanelText.text = name;
    }

    public void DisplayText(string text)
    {
        var displayText = text;
        if (text.Contains(":") && names != null)
        {
            var textParts = text.Split(nameSeparator, 2);
            var lineName = textParts[0];
            foreach (var name in names)
            {
                if (lineName != name)
                {
                    continue;
                }

                var speaker = textParts[0];
                SetSpeaker(speaker);
                
                displayText = textParts[1].Trim();
                
                break;
            }
        }
        else
        {
            SetSpeaker(string.Empty);
        }
        DialogText.text = displayText;
        Debug.Log(displayText);
    }

    private Sprite GetBackground(string bgName)
    {
        Sprite texture = null;

        foreach (var t in backgrounds)
        {
            if (t.name == bgName)
            {
                texture = t;
                break;
            }
        }

        return texture;
    }

    public void Update ()
    {
        if (Input.anyKeyDown && inkStory.canContinue)
        {
            ContinueStory();
        }
        
        if(ChoiceButtons.Length < inkStory.currentChoices.Count)
        {
            // too many choices or too few buttons!
            Debug.LogError("Not enough buttons or too many choices! - did you add enough buttons? Choices: " + inkStory.currentChoices.Count + " Buttons: " + inkStory.currentChoices.Count);
        }

        for (int i = 0; i < ChoiceButtons.Length; ++i)
        {
            if (i >= inkStory.currentChoices.Count)
            {
                ChoiceTexts[i].text = ""; // clear
                ChoiceButtons[i].gameObject.SetActive(false);
            }
            else
            {
                ChoiceTexts[i].text = inkStory.currentChoices[i].text;
                ChoiceButtons[i].gameObject.SetActive(true);
            }
        }
      
    }

    private void getNames ()
    {
        if (inkStory.canContinue) {
            var text = inkStory.Continue ();
            var parts = text.Split (commandSeparator, 2);
            if (parts [0] == "NAMES") {
                names = parts [1].Split (',');
                for (var i = 0; i < names.Length; ++i) {
                    names [i] = names [i].Replace ("\n", "").Trim ();
                }
            }
        }
    }

    public void MakeChoice (int choice)
    {
        inkStory.ChooseChoiceIndex (choice);
        ContinueStory();
    }

    public void ContinueStory()
    {
        var text = inkStory.Continue();
        var parts = text.Split(commandSeparator, 2);

        if (parts[0] == "BACKGROUND")
        { 
            var bgName = parts[1].Replace("\n", "");
            var sprite = GetBackground(bgName);
            if (sprite == null)
            {
                Debug.LogErrorFormat("'{0}' is not a valid background image.", bgName);
                Debug.DebugBreak();
            }
            backgroundSprite.sprite = sprite;
            if (inkStory.canContinue)
            {
                text = inkStory.Continue();                
            } else {
                return;
            }

        } else if (parts[0] == "SCENE")
        {
            // Change the scene!
            string[] guids = AssetDatabase.FindAssets(parts[1]);
            string assetPath = AssetDatabase.GUIDToAssetPath(guids[0]);
            // ink files default to a DefaultAsset, throwing an exception. Manually replace extension with json.
            assetPath = assetPath.Replace(".ink", ".json");
            TextAsset newScene = (TextAsset)AssetDatabase.LoadMainAssetAtPath(assetPath);
            inkStory = new Story(newScene.text);
            if (inkStory.canContinue)
            {
                text = inkStory.Continue();
            } else
            {
                return;
            }
        }

        DisplayText(text);
    }
}
