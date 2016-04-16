using System;
using UnityEngine;
using Ink.Runtime;
using UnityEditor;
using UnityEngine.UI;

public class InkScript : MonoBehaviour
{
    public TextAsset InkAsset;
    private Story inkStory;

    private const string names_knot = "names";
    private const string first_knot = "story_start";

    private string[] names;
    private string currentSpeaker = string.Empty;

    private char[] commandSeparator = { ' ' };
    private char[] nameSeparator = { ':' };

    private bool progressStory;

    private BackgroundManager backgrounds;
    private SpriteRenderer backgroundSprite;
    [SerializeField]
    private Text DialogText;

    public void Start()
    {
        names = null;

        backgrounds = GameObject.Find("Game Manager").GetComponent<BackgroundManager>();

        var backgroundGameObject = GameObject.Find("Background");;
        backgroundSprite = backgroundGameObject.GetComponent<SpriteRenderer>();
        progressStory = true;
    }

    public void Awake()
    {
        inkStory = new Story(InkAsset.text);
        progressStory = true;
        getNames();
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

                currentSpeaker = textParts[0];
                // TODO: Set displayText to textParts[1] once we have it all visual-like
                displayText = string.Format("[{0}]{1}", currentSpeaker, textParts[1]);
                break;
            }
        }
        else if (!string.IsNullOrEmpty(currentSpeaker))
        {
            displayText = string.Format("[{0}] {1}", currentSpeaker, text);
        }
        DialogText.text = displayText;
        Debug.Log(displayText);
    }

    public void Update()
    {
        if (!progressStory)
        {
            return;
        }

        while (inkStory.canContinue)
        {
            var text = inkStory.Continue();
            var parts = text.Split(commandSeparator, 2);

            switch (parts[0])
            {
                case "BACKGROUND":
                    var bgName = parts[1].Replace("\n", "");
                    var sprite = backgrounds.GetImage(bgName);
                    if (sprite == null)
                    {
                        Debug.LogErrorFormat("'{0}' is not a valid background image.");
                        Debug.DebugBreak();
                    }
                    backgroundSprite.sprite = sprite;
                    continue;

                default:
                    DisplayText(text);
                    break;
            }
        }

        if (inkStory.currentChoices.Count > 0)
        {
            inkStory.ChooseChoiceIndex(0);
            EditorApplication.isPaused = true; // To be removed once we get dialogue showing on screen.
        }
    }

    private void getNames() {
        inkStory.ChoosePathString(names_knot);
        if (inkStory.canContinue){
            var text = inkStory.Continue();
            var parts = text.Split(commandSeparator, 2);
            if (parts[0] == "NAMES")
            {
                names = parts[1].Split(',');
                for (var i = 0; i < names.Length; ++i)
                {
                    names[i] = names[i].Replace("\n", "").Trim();
                }
            }
        }
        inkStory.ChoosePathString(first_knot);
    }
}
