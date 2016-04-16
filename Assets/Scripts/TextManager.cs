using UnityEngine;
using UnityEngine.UI;

//using System.Collections;
using System.Collections.Generic;
using Ink.Runtime;

public class TextManager : MonoBehaviour
{
    [SerializeField]
    private Canvas canvas;
    [SerializeField]
    private float elementPadding;
    public Button buttonPrefab;
    public Text textPrefab;

    public List<Text> currentTexts;
    public List<Button> currentChoices;

    public void Start ()
    {
        currentTexts = new List<Text> ();
        currentChoices = new List<Button> ();
    }

    // TODO: resize textboxes based on text width, position properly.
    public float DisplayText (string text, float offset)
    {
        Text storyText = Instantiate (textPrefab);
        storyText.text = text;
        storyText.transform.SetParent (canvas.transform, false);
        storyText.transform.Translate (new Vector2 (0, offset));
        currentTexts.Add (storyText);
        offset -= (storyText.fontSize + elementPadding);
        return offset;
    }

    // TODO: Same as above, make buttons from the button prefab, plug in text, resize and position.
    public float DisplayChoices (IList<Choice> choices, float offset)
    {
        foreach (Choice choice in choices) {
            Button choiceButton = Instantiate (buttonPrefab);
            Text choiceText = choiceButton.gameObject.GetComponentInChildren<Text> ();
            choiceText.text = choice.text;

            choiceButton.onClick.AddListener (delegate() {
                MakeChoice (choice.index);
            });

            choiceButton.transform.SetParent (canvas.transform, false);
            choiceButton.transform.Translate (new Vector2 (0, offset));
            currentChoices.Add (choiceButton);
            offset -= (choiceText.fontSize + elementPadding);
            Debug.Log (choice.text);
        }
        return offset;
    }

    public void MakeChoice (int choiceIndex)
    {
        foreach (Text text in currentTexts) {
            Destroy (text);
        }
        foreach (Button choice in currentChoices) {
            Destroy (choice);
        }
        InkScript.MakeChoice (choiceIndex);
    }
}
