using System;
using UnityEngine;
using Ink.Runtime;
using UnityEditor;
using UnityEngine.UI;

public class InkScript : MonoBehaviour
{
    public TextAsset InkAsset;
    private static Story inkStory;

    private const string names_knot = "names";
    private const string first_knot = "story_start";

    private string[] names;
    private string currentSpeaker = string.Empty;

    private char[] commandSeparator = { ' ' };
    private char[] nameSeparator = { ':' };

    private static bool progressStory;

    private BackgroundManager backgrounds;
    private SpriteRenderer backgroundSprite;
    [SerializeField]
    private Text DialogText;
    [SerializeField]
    private Button[] ChoiceButtons;
    private Text[] ChoiceTexts;

    public void Start ()
    {
        names = null;

        backgrounds = GameObject.Find("Game Manager").GetComponent<BackgroundManager>();

        var backgroundGameObject = GameObject.Find ("Background");
        ;
        backgroundSprite = backgroundGameObject.GetComponent<SpriteRenderer> ();
        progressStory = true;
    }

    public void Awake ()
    {
        inkStory = new Story (InkAsset.text);
        progressStory = true;
        getNames ();

        // get texts from buttons, so we don't have to keep finding them
        ChoiceTexts = new Text[ChoiceButtons.Length];
        for(int i = 0; i < ChoiceButtons.Length; ++i)
        {
            ChoiceTexts[i] = ChoiceButtons[i].GetComponentInChildren<Text>();
            int captureCopy = i;
            ChoiceButtons[i].onClick.AddListener(() => MakeChoice(captureCopy));
        }
    }


    public void DisplayText(string text)
    {
        var displayText = text;
        if (text.Contains (":") && names != null) {
            var textParts = text.Split (nameSeparator, 2);
            var lineName = textParts [0];
            foreach (var name in names) {
                if (lineName != name) {
                    continue;
                }

                currentSpeaker = textParts [0];
                // TODO: Set displayText to textParts[1] once we have it all visual-like
                displayText = string.Format ("[{0}]{1}", currentSpeaker, textParts [1]);
                break;
            }
        } else if (!string.IsNullOrEmpty (currentSpeaker)) {
            displayText = string.Format ("[{0}] {1}", currentSpeaker, text);
        }
        DialogText.text = displayText;
        Debug.Log(displayText);
    }

    public void Update ()
    {
        if (!progressStory) {
            return;
        }
        

        while (inkStory.canContinue) {
            var text = inkStory.Continue ();
            var parts = text.Split (commandSeparator, 2);

            switch (parts [0]) {
            case "BACKGROUND":
                var bgName = parts [1].Replace ("\n", "");
                var sprite = backgrounds.GetImage (bgName);
                if (sprite == null) {
                    Debug.LogErrorFormat ("'{0}' is not a valid background image.");
                    Debug.DebugBreak ();
                }
                backgroundSprite.sprite = sprite;
                continue;

            default:
                DisplayText (text);
                break;
            }
        }

        // In here is where we'll want to show the buttons for choices and whatnot.
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
                ChoiceButtons[i].gameObject.active = false;
                // get button and disable it

            }
            else
            {
                ChoiceTexts[i].text = inkStory.currentChoices[i].text;
                ChoiceButtons[i].gameObject.active = true;
            }
        }


        progressStory = false; // TODO: When we make a choice, set progressStory to true.
    }

    private void getNames ()
    {
        inkStory.ChoosePathString (names_knot);
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
        inkStory.ChoosePathString (first_knot);
    }

    public void MakeChoice (int choice)
    {
        inkStory.ChooseChoiceIndex (choice);
        progressStory = true;
    }


}
