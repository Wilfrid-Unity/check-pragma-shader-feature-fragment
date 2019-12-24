using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetKeywords : MonoBehaviour
{
    public Material mat;

    void Update()
    {
#if false
        if (Input.GetButtonDown("Fire1"))
        {
            if(Shader.IsKeywordEnabled("GLOBAL_OUTPUT_RED"))
                Shader.DisableKeyword("GLOBAL_OUTPUT_RED");
            else
                Shader.EnableKeyword("GLOBAL_OUTPUT_RED");
        }

        if (Input.GetButtonDown("Fire2"))
        {
            if (mat.IsKeywordEnabled("LOCAL_OUTPUT_BLUE"))
                mat.DisableKeyword("LOCAL_OUTPUT_BLUE");
            else
                mat.EnableKeyword("LOCAL_OUTPUT_BLUE");
        }
#endif
    }
}
