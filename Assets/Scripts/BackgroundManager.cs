using UnityEngine;
using System.Collections;

public class BackgroundManager : MonoBehaviour
{
    public Sprite[] Backgrounds;

    public Sprite GetImage(string name)
    {
        Sprite texture = null;

        foreach (var t in Backgrounds)
        {
            if (t.name == name)
            {
                texture = t;
                break;
            }
        }

        return texture;
    }
    
}
