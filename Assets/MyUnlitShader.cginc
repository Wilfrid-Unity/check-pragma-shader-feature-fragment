
struct appdata
{
    float4 vertex : POSITION;
    float2 uv : TEXCOORD0;
};

struct v2f
{
    float2 uv : TEXCOORD0;
    float4 vertex : SV_POSITION;
};

// Transforms 2D UV by scale/bias property - copied from UnityCG.cginc
#define TRANSFORM_TEX(tex,name) (tex.xy * name##_ST.xy + name##_ST.zw)

sampler2D _MainTex;
float4 _MainTex_ST;

v2f vert(appdata v)
{
    v2f o;
    o.vertex = UnityObjectToClipPos(v.vertex);
    o.uv = TRANSFORM_TEX(v.uv, _MainTex);
    return o;
}

fixed4 frag(v2f i) : SV_Target
{
    fixed4 col = tex2D(_MainTex, i.uv);

    // TODO: try to use _ALPHABLEND_ON to reproduce issue from PR#98536

    #if !GLOBAL_OUTPUT_RED
        col.r *= .2;
    #endif

    col.g *= .2;

    #if !LOCAL_OUTPUT_BLUE
        col.b *= .2;
    #endif

    return col;
}
