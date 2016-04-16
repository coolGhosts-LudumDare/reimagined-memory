using System;
using System.Security.Policy;
using UnityEngine;
using Ink.Runtime;

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

    public void Start()
    {
        names = null;
        getNames();
    }

    public void Awake()
    {
        inkStory = new Story(InkAsset.text);
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
                displayText = string.Format("[{0}]{1}", currentSpeaker, textParts[1]);
                break;
            }
        }
        else if (!string.IsNullOrEmpty(currentSpeaker))
        {
            displayText = string.Format("[{0}] {1}", currentSpeaker, text);
        }

        Debug.Log(displayText);
    }

    public void Update()
    {
        while (inkStory.canContinue)
        {
            var text = inkStory.Continue();
            var parts = text.Split(commandSeparator, 2);
            switch (parts[0])
            {
                case "BACKGROUND":
                    Debug.LogError("Bacgkround command not yet implemented");
                    Debug.DebugBreak();
                    continue;
                default:
                    DisplayText(text);
                    break;
            }
        }

        if (inkStory.currentChoices.Count > 0)
        {
            inkStory.ChooseChoiceIndex(0);
        }

        // Let's not do this for now
        if (false)
        {
            if (inkStory.currentChoices.Count > 0)
            {
                for (int i = 0; i < inkStory.currentChoices.Count; ++i)
                {
                    Choice choice = inkStory.currentChoices[i];
                    Debug.Log("Choice " + (i + 1) + ". " + choice.text);
                }
            }
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
