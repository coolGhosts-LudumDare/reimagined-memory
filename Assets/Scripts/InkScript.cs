using Ink.Runtime;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEditor;

public class InkScript : MonoBehaviour
{
    public TextAsset InkAsset;

    [SerializeField]
    private TextAsset namesInkAsset;

    private static Story inkStory;

    private string[] names;

    private char[] commandSeparator = { ' ' };
    private char[] nameSeparator = { ':' };

    private AudioSource musicSource;
    private AudioSource effectSource;

    private Sprite[] backgrounds;

    private SpriteRenderer backgroundSprite;
    private GameObject namePanel;
    private Text namePanelText;

    [SerializeField]
    private Text dialogText;

    private Button[] choiceButtons;
    private Text[] choiceTexts;

    private SpriteRenderer leftCharacterSprite;
    private SpriteRenderer middleCharacterSprite;
    private SpriteRenderer rightCharacterSprite;

    private Dictionary<string, Sprite[]> characterImages;

    public void Awake()
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
            inkStory = new Story(InkAsset.text);
        }

        if (characterImages == null)
        {
            characterImages = new Dictionary<string, Sprite[]>();
            foreach (var name in names)
            {
                var images = Resources.LoadAll<Sprite>("Characters/" + name);
                characterImages.Add(name, images);
            }

            var leftSprite = GameObject.Find("Left Sprite");
            leftCharacterSprite = leftSprite.GetComponent<SpriteRenderer>();
            var middleSprite = GameObject.Find("Middle Sprite");
            middleCharacterSprite = middleSprite.GetComponent<SpriteRenderer>();
            var rightSprite = GameObject.Find("Right Sprite");
            rightCharacterSprite = rightSprite.GetComponent<SpriteRenderer>();
        }

        if (musicSource == null || effectSource == null)
        {
            musicSource = GameObject.Find("Music").GetComponent<AudioSource>();
            effectSource = GameObject.Find("Sound").GetComponent<AudioSource>();
        }

        var choiceContainer = GameObject.Find("Choices");
        choiceButtons = choiceContainer.GetComponentsInChildren<Button>();
        choiceTexts = choiceContainer.GetComponentsInChildren<Text>();
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
        var displayText = text.Trim();
        if (text.Contains(":") && names != null)
        {
            var textParts = displayText.Split(nameSeparator, 2);
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
        dialogText.text = displayText;
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

    public void Update()
    {
        if (Input.anyKeyDown && inkStory.canContinue)
        {
            ContinueStory();
        }

        if (choiceButtons.Length < inkStory.currentChoices.Count)
        {
            // too many choices or too few buttons!
            Debug.LogError("Not enough buttons or too many choices! - did you add enough buttons? Choices: " +
                           inkStory.currentChoices.Count + " Buttons: " + inkStory.currentChoices.Count);
        }

        for (int i = 0; i < choiceButtons.Length; ++i)
        {
            if (i >= inkStory.currentChoices.Count)
            {
                choiceTexts[i].text = ""; // clear
                choiceButtons[i].gameObject.SetActive(false);
            }
            else
            {
                choiceTexts[i].text = inkStory.currentChoices[i].text;
                choiceButtons[i].gameObject.SetActive(true);
            }
        }

    }

    private void getNames()
    {
        if (inkStory.canContinue)
        {
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
    }

    public void MakeChoice(int choice)
    {
        inkStory.ChooseChoiceIndex(choice);
        ContinueStory();
    }

    private Sprite GetCharacterImage(string character, string expression)
    {
        Sprite[] images;
        if (!characterImages.TryGetValue(character, out images))
        {
            int a = 0;
            return null;
        }

        foreach (var image in images)
        {
            if (image.name == expression)
                return image;
        }

        return null;
    }

    public void ContinueStory()
    {
        var text = inkStory.Continue();
        Debug.Log(text);

        var processLine = true;
        while (processLine)
        {
            var parts = text.Split(commandSeparator, 2);

            var processedCommand = false;
            if (parts[0] == "BACKGROUND")
            {
                // Change the background
                // BACKGROUND <background file>
                var bgName = parts[1].Replace("\n", "");
                var sprite = GetBackground(bgName);
                if (sprite == null)
                {
                    Debug.LogErrorFormat("'{0}' is not a valid background image.", bgName);
                }
                else
                {
                    backgroundSprite.sprite = sprite;
                }

                processedCommand = true;
            }
            else if (parts[0] == "SCENE")
            {
                // Change the scene!
                // SCENE <ink file>
                var filename = parts[1].Trim();

                var file = Resources.Load<TextAsset>("Inks/" + filename);
                if (file == null)
                {
                    Debug.LogErrorFormat("Couldn't switch to scene '{0}'.", filename);
                }
                else
                {
                    inkStory = new Story(file.text);
                }

                processedCommand = true;
            }
            else if (parts[0] == "MUSIC")
            {
                // Play/stop music
                // MUSIC [<filename>|stop]

                var filename = parts[1].Trim();

                if (filename.ToLower() == "stop")
                {
                    musicSource.Stop();
                }
                else
                {
                    if (musicSource.clip == null ||
                        musicSource.clip.name != filename)
                    {
                        musicSource.clip = Resources.Load<AudioClip>("Music/" + filename);
                    }

                    musicSource.Play();
                }

                processedCommand = true;
            }
            else if (parts[0] == "SOUND")
            {
                // Play a sound
                // SOUND [filename]

                var filename = parts[1].Trim();

                if (effectSource.clip != null &&
                    effectSource.clip.name == filename)
                {
                    effectSource.Play();
                }
                else
                {
                    effectSource.clip = Resources.Load<AudioClip>("Sounds/" + filename);
                    if (effectSource.clip == null)
                    {
                        Debug.LogErrorFormat("Couldn't play sound '{0}'.", filename);
                    }
                    else
                    {
                        effectSource.Play();
                    }
                }

                processedCommand = true;
            }
            else if (parts[0] == "IMAGE")
            {
                // Show an image at a specific spot.
                // IMAGE [left|middle|right] <character>_<expression> <flipped>
                var imageParts = parts[1].Split(' ');

                if (imageParts.Length < 2 ||
                    imageParts.Length > 3)
                {
                    // Incorrectly formed IMAGE command
                }

                var pos = imageParts[0].ToLower();
                if (pos != "left" &&
                    pos != "middle" &&
                    pos != "right")
                {
                    // Error out
                }

                var filenameParts = imageParts[1].Trim().Split('_');
                var character = filenameParts[0];
                var expression = filenameParts[1];

                var image = GetCharacterImage(character, expression);
                if (image == null)
                {
                    // Error out
                }

                var isFlipped = (imageParts.Length == 3);

                switch (pos)
                {
                    case "left":
                        leftCharacterSprite.sprite = image;
                        leftCharacterSprite.flipX = isFlipped;
                        break;
                    default:
                        middleCharacterSprite.sprite = image;
                        middleCharacterSprite.flipX = isFlipped;
                        break;
                    case "right":
                        rightCharacterSprite.sprite = image;
                        rightCharacterSprite.flipX = isFlipped;
                        break;
                }
                processedCommand = true;
            }
            else if (parts[0] == "FLIP")
            {
                // Flips the image at a specific spot.
                // FLIP [left|middle|right]

                var slot = parts[1].Trim();

                switch (slot)
                {
                    case "left":
                        leftCharacterSprite.flipX = !leftCharacterSprite.flipX;
                        break;
                    default:
                        middleCharacterSprite.flipX = !middleCharacterSprite.flipX;
                        break;
                    case "right":
                        rightCharacterSprite.flipX = !rightCharacterSprite.flipX;
                        break;
                }

                processedCommand = true;
            }
            else if (parts[0] == "CLEAR")
            {
                // Clears either a specific character slot or all of them
                // CLEAR [left|middle|right|all]

                var slot = parts[1].Trim();

                switch (slot)
                {
                    case "left":
                        leftCharacterSprite.sprite = null;
                        break;
                    case "middle":
                        middleCharacterSprite.sprite = null;
                        break;
                    case "right":
                        rightCharacterSprite.sprite = null;
                        break;
                    default:
                        leftCharacterSprite.sprite = null;
                        middleCharacterSprite.sprite = null;
                        rightCharacterSprite.sprite = null;
                        break;
                }

                processedCommand = true;
            }

            if (!processedCommand)
            {
                DisplayText(text);
                processLine = false;
            }
            else
            {
                if (inkStory.canContinue)
                {
                    text = inkStory.Continue();
                }
                else
                {
                    processLine = false;
                }
            }
        }
    }
}
