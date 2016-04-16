using UnityEngine;
using UnityEngine.UI;
//using System.Collections;
using System.Collections.Generic;
using Ink.Runtime;

public class TextManager : MonoBehaviour {
    [SerializeField]
    private Canvas canvas;
    [SerializeField]
    private float elementPadding;
    public Button buttonPrefab;
    public Text textPrefab;

    // TODO: resize textboxes based on text width, position properly.
    public float DisplayText(string text, float offset) {
        Text storyText = Instantiate(textPrefab);
        storyText.text = text;
        storyText.transform.SetParent (canvas.transform, false);
        storyText.transform.Translate (new Vector2 (0, offset));
        offset -= (storyText.fontSize + elementPadding);
        return offset;
    }

    // TODO: Same as above, make buttons from the button prefab, plug in text, resize and position.
    public void LayoutChoices(IList<Choice> choices) {
        // nothing yet
    }
}
