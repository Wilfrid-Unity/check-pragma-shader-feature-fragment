Shader "Unlit/GlobalNoFragment-LocalNoFragment"
{
    Properties
    {
        _MainTex("Texture", 2D) = "white" {}
        [Toggle(GLOBAL_OUTPUT_RED)] _GlobalOutputRed("(Global) Output Red?", Int) = 0
        [Toggle(LOCAL_OUTPUT_BLUE)] _LocalOutputBlue("(Local) Output Blue?", Int) = 0
    }
        SubShader
        {
            Tags { "RenderType" = "Opaque" }
            LOD 100

            Pass
            {
                CGPROGRAM

                #pragma vertex vert
                #pragma fragment frag

                #pragma shader_feature       GLOBAL_OUTPUT_RED
                #pragma shader_feature_local LOCAL_OUTPUT_BLUE

                #include "MyUnlitShader.cginc"

                ENDCG
            }
        }
}
