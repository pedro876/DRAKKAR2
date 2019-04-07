// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:36465,y:32465,varname:node_3138,prsc:2|emission-3875-OUT,clip-6520-R;n:type:ShaderForge.SFN_Tex2d,id:7756,x:34557,y:32883,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_7756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6da572218120d0049b599e7dddfc278e,ntxv:3,isnm:False|UVIN-827-OUT;n:type:ShaderForge.SFN_TexCoord,id:1738,x:32734,y:32749,varname:node_1738,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9712,x:32936,y:32851,varname:node_9712,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1738-UVOUT;n:type:ShaderForge.SFN_Time,id:6080,x:32656,y:32926,varname:node_6080,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6127,x:33213,y:33079,varname:node_6127,prsc:2|A-6134-OUT,B-1252-OUT;n:type:ShaderForge.SFN_Multiply,id:6134,x:32875,y:33044,varname:node_6134,prsc:2|A-6080-TSL,B-4505-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1252,x:32856,y:33285,varname:node_1252,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3247-XYZ;n:type:ShaderForge.SFN_Add,id:827,x:33146,y:32851,varname:node_827,prsc:2|A-9712-OUT,B-6134-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3247,x:32665,y:33328,ptovrint:False,ptlb:DirectionXY,ptin:_DirectionXY,varname:node_3247,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:-1,v3:0,v4:0;n:type:ShaderForge.SFN_Length,id:9746,x:33210,y:33404,varname:node_9746,prsc:2|IN-1738-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6520,x:33892,y:32955,ptovrint:False,ptlb:node_6520,ptin:_node_6520,varname:node_6520,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:02742d24bb332fa498f31c51344eeca6,ntxv:3,isnm:False|UVIN-1738-UVOUT;n:type:ShaderForge.SFN_Vector2,id:4505,x:32661,y:33142,varname:node_4505,prsc:2,v1:0,v2:20;n:type:ShaderForge.SFN_Add,id:6442,x:33290,y:32499,varname:node_6442,prsc:2|A-7510-OUT,B-1738-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:3298,x:33393,y:32674,varname:node_3298,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9712-OUT;n:type:ShaderForge.SFN_Vector2,id:7510,x:32800,y:32500,varname:node_7510,prsc:2,v1:0,v2:-0.2;n:type:ShaderForge.SFN_Tex2d,id:2100,x:33874,y:32422,ptovrint:False,ptlb:node_6520_copy,ptin:_node_6520_copy,varname:_node_6520_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:02742d24bb332fa498f31c51344eeca6,ntxv:3,isnm:False|UVIN-6442-OUT;n:type:ShaderForge.SFN_Add,id:7586,x:33656,y:32620,varname:node_7586,prsc:2|A-3298-OUT,B-6150-OUT;n:type:ShaderForge.SFN_Vector1,id:6150,x:33552,y:32786,varname:node_6150,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Posterize,id:5208,x:33978,y:32607,varname:node_5208,prsc:2|IN-7586-OUT,STPS-6351-OUT;n:type:ShaderForge.SFN_Vector1,id:6351,x:33789,y:32744,varname:node_6351,prsc:2,v1:2;n:type:ShaderForge.SFN_Clamp01,id:2750,x:34141,y:32607,varname:node_2750,prsc:2|IN-5208-OUT;n:type:ShaderForge.SFN_OneMinus,id:8336,x:34228,y:32433,varname:node_8336,prsc:2|IN-2100-R;n:type:ShaderForge.SFN_OneMinus,id:2038,x:34291,y:32607,varname:node_2038,prsc:2|IN-2750-OUT;n:type:ShaderForge.SFN_Add,id:3303,x:34475,y:32519,varname:node_3303,prsc:2|A-8336-OUT,B-2038-OUT;n:type:ShaderForge.SFN_Multiply,id:5447,x:34859,y:32655,varname:node_5447,prsc:2|A-3303-OUT,B-6520-R;n:type:ShaderForge.SFN_Add,id:3875,x:35666,y:32814,varname:node_3875,prsc:2|A-7756-RGB,B-2783-OUT;n:type:ShaderForge.SFN_Tex2d,id:322,x:34154,y:33183,ptovrint:False,ptlb:node_322,ptin:_node_322,varname:node_322,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6da572218120d0049b599e7dddfc278e,ntxv:0,isnm:False|MIP-6023-T;n:type:ShaderForge.SFN_Time,id:6023,x:33858,y:33198,varname:node_6023,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:1174,x:34714,y:33237,varname:node_1174,prsc:2|NRM-7242-OUT,EXP-7756-R;n:type:ShaderForge.SFN_NormalVector,id:7242,x:34467,y:33148,prsc:2,pt:False;n:type:ShaderForge.SFN_Max,id:7802,x:35059,y:33004,varname:node_7802,prsc:2|A-558-OUT,B-1174-OUT;n:type:ShaderForge.SFN_Min,id:558,x:35357,y:33193,varname:node_558,prsc:2|A-3875-OUT,B-7756-R;n:type:ShaderForge.SFN_Max,id:8155,x:34997,y:33168,varname:node_8155,prsc:2|A-7756-RGB,B-6128-OUT;n:type:ShaderForge.SFN_Multiply,id:6128,x:34917,y:33298,varname:node_6128,prsc:2|A-1174-OUT,B-1174-OUT;n:type:ShaderForge.SFN_Min,id:2363,x:35068,y:32454,varname:node_2363,prsc:2|A-6723-OUT,B-5762-OUT,C-3578-R;n:type:ShaderForge.SFN_Time,id:3047,x:34857,y:31922,varname:node_3047,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5762,x:35126,y:32658,varname:node_5762,prsc:2|A-1731-OUT,B-5447-OUT;n:type:ShaderForge.SFN_Sin,id:1731,x:35016,y:32245,varname:node_1731,prsc:2|IN-3047-T;n:type:ShaderForge.SFN_Smoothstep,id:2783,x:35738,y:32387,varname:node_2783,prsc:2|A-3640-OUT,B-4297-OUT,V-6622-OUT;n:type:ShaderForge.SFN_Multiply,id:6761,x:35194,y:32170,varname:node_6761,prsc:2|A-8602-OUT,B-1731-OUT;n:type:ShaderForge.SFN_Vector1,id:8602,x:35036,y:32083,varname:node_8602,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Add,id:4297,x:35455,y:32109,varname:node_4297,prsc:2|A-204-OUT,B-6761-OUT;n:type:ShaderForge.SFN_Vector1,id:204,x:35248,y:32064,varname:node_204,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Tex2d,id:8034,x:34383,y:32257,ptovrint:False,ptlb:node_8034,ptin:_node_8034,varname:node_8034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c3d66a8056f9db345b1ea380aa7e815d,ntxv:0,isnm:False|UVIN-132-OUT;n:type:ShaderForge.SFN_Multiply,id:8797,x:34643,y:32335,varname:node_8797,prsc:2|A-8034-RGB,B-8034-RGB;n:type:ShaderForge.SFN_ComponentMask,id:6723,x:34798,y:32400,varname:node_6723,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8797-OUT;n:type:ShaderForge.SFN_Add,id:3867,x:35276,y:32404,varname:node_3867,prsc:2|A-8602-OUT,B-2363-OUT;n:type:ShaderForge.SFN_Multiply,id:1716,x:33849,y:32086,varname:node_1716,prsc:2|A-8719-OUT,B-1738-UVOUT;n:type:ShaderForge.SFN_Vector2,id:8719,x:33575,y:31916,varname:node_8719,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Add,id:132,x:34166,y:32063,varname:node_132,prsc:2|A-5196-OUT,B-1716-OUT;n:type:ShaderForge.SFN_Vector2,id:5196,x:33907,y:31945,varname:node_5196,prsc:2,v1:0.2,v2:0.2;n:type:ShaderForge.SFN_ConstantClamp,id:6622,x:35435,y:32554,varname:node_6622,prsc:2,min:0,max:1|IN-5762-OUT;n:type:ShaderForge.SFN_Clamp01,id:4723,x:35505,y:32404,varname:node_4723,prsc:2|IN-3867-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:3640,x:35489,y:32272,varname:node_3640,prsc:2,min:0,max:0.5|IN-3867-OUT;n:type:ShaderForge.SFN_Tex2d,id:3578,x:34798,y:32154,ptovrint:False,ptlb:node_3578,ptin:_node_3578,varname:node_3578,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:4790,x:35738,y:32546,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:747,x:36042,y:32789,varname:node_747,prsc:2|A-2783-OUT,B-4790-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7151,x:36206,y:32721,varname:node_7151,prsc:2,min:0,max:0.3|IN-747-OUT;proporder:7756-3247-6520-2100-8034-3578;pass:END;sub:END;*/

Shader "Shader Forge/water_main" {
    Properties {
        _Texture ("Texture", 2D) = "bump" {}
        _DirectionXY ("DirectionXY", Vector) = (1,-1,0,0)
        _node_6520 ("node_6520", 2D) = "bump" {}
        _node_6520_copy ("node_6520_copy", 2D) = "bump" {}
        _node_8034 ("node_8034", 2D) = "white" {}
        _node_3578 ("node_3578", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _node_6520; uniform float4 _node_6520_ST;
            uniform sampler2D _node_6520_copy; uniform float4 _node_6520_copy_ST;
            uniform sampler2D _node_8034; uniform float4 _node_8034_ST;
            uniform sampler2D _node_3578; uniform float4 _node_3578_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_6520_var = tex2D(_node_6520,TRANSFORM_TEX(i.uv0, _node_6520));
                clip(_node_6520_var.r - 0.5);
////// Lighting:
////// Emissive:
                float2 node_9712 = (i.uv0*2.0+-1.0);
                float4 node_6080 = _Time;
                float2 node_6134 = (node_6080.r*float2(0,20));
                float2 node_827 = (node_9712+node_6134);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_827, _Texture));
                float node_8602 = 0.25;
                float2 node_132 = (float2(0.2,0.2)+(float2(0.5,0.5)*i.uv0));
                float4 _node_8034_var = tex2D(_node_8034,TRANSFORM_TEX(node_132, _node_8034));
                float4 node_3047 = _Time;
                float node_1731 = sin(node_3047.g);
                float2 node_6442 = (float2(0,-0.2)+i.uv0);
                float4 _node_6520_copy_var = tex2D(_node_6520_copy,TRANSFORM_TEX(node_6442, _node_6520_copy));
                float node_6351 = 2.0;
                float node_5762 = (node_1731*(((1.0 - _node_6520_copy_var.r)+(1.0 - saturate(floor((node_9712.g+0.9) * node_6351) / (node_6351 - 1))))*_node_6520_var.r));
                float3 _node_3578_var = UnpackNormal(tex2D(_node_3578,TRANSFORM_TEX(i.uv0, _node_3578)));
                float node_3867 = (node_8602+min(min((_node_8034_var.rgb*_node_8034_var.rgb).r,node_5762),_node_3578_var.r));
                float node_2783 = smoothstep( clamp(node_3867,0,0.5), (0.75+(node_8602*node_1731)), clamp(node_5762,0,1) );
                float3 node_3875 = (_Texture_var.rgb+node_2783);
                float3 emissive = node_3875;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_6520; uniform float4 _node_6520_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _node_6520_var = tex2D(_node_6520,TRANSFORM_TEX(i.uv0, _node_6520));
                clip(_node_6520_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
