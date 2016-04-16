using System;
using UnityEngine;
using Ink.Runtime;
using UnityEditor;

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
    private TextManager textManager;

    public void Start ()
    {
        names = null;

        backgrounds = GameObject.Find ("Game Manager").GetComponent<BackgroundManager> ();
        textManager = GameObject.Find ("Game Manager").GetComponent<TextManager> ();

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
    }

    public float DisplayText (string text, float offset)
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
        offset = textManager.DisplayText (displayText, offset);
        Debug.Log (displayText);
        return offset;
    }

    public void Update ()
    {
        if (!progressStory) {
            return;
        }

        float offset = 0;

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
                offset = DisplayText (text, offset);
                break;
            }
        }

        // In here is where we'll want to show the buttons for choices and whatnot.
        if (inkStory.currentChoices.Count > 0) {
            offset = textManager.DisplayChoices (inkStory.currentChoices, offset);
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

    public static void MakeChoice (int choice)
    {
        inkStory.ChooseChoiceIndex (choice);
        progressStory = true;
    }


}
