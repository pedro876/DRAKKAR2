// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:0,x:35219,y:31857,varname:node_0,prsc:2|custl-64-OUT,olwid-5750-OUT,olcol-2892-RGB;n:type:ShaderForge.SFN_LightAttenuation,id:37,x:34009,y:32247,varname:node_37,prsc:2;n:type:ShaderForge.SFN_Dot,id:40,x:32931,y:32250,varname:node_40,prsc:2,dt:1|A-42-OUT,B-41-OUT;n:type:ShaderForge.SFN_NormalVector,id:41,x:32722,y:32344,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:42,x:32722,y:32223,varname:node_42,prsc:2;n:type:ShaderForge.SFN_Add,id:55,x:34047,y:32608,varname:node_55,prsc:2|A-84-OUT,B-9165-OUT,C-82-RGB,D-317-OUT;n:type:ShaderForge.SFN_LightColor,id:63,x:33982,y:32376,varname:node_63,prsc:2;n:type:ShaderForge.SFN_Multiply,id:64,x:34468,y:32344,varname:node_64,prsc:2|A-37-OUT,B-63-RGB,C-55-OUT;n:type:ShaderForge.SFN_Tex2d,id:82,x:33368,y:32002,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:_Diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4c7b3b1198ce0dc4e81c59bb37bd37e8,ntxv:0,isnm:False|UVIN-272-UVOUT;n:type:ShaderForge.SFN_Multiply,id:84,x:33617,y:32343,cmnt:Diffuse Light,varname:node_84,prsc:2|A-82-RGB,B-264-OUT;n:type:ShaderForge.SFN_ValueProperty,id:216,x:33133,y:32423,ptovrint:False,ptlb:Bands,ptin:_Bands,varname:_Bands,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Posterize,id:264,x:33368,y:32368,varname:node_264,prsc:2|IN-40-OUT,STPS-216-OUT;n:type:ShaderForge.SFN_TexCoord,id:272,x:33169,y:31870,varname:node_272,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:6424,x:33498,y:32850,ptovrint:False,ptlb:Color oscuro,ptin:_Coloroscuro,varname:node_6424,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3301887,c2:0.2694464,c3:0.2694464,c4:1;n:type:ShaderForge.SFN_Color,id:2892,x:35017,y:32520,ptovrint:False,ptlb:node_2892,ptin:_node_2892,varname:node_2892,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1910822,c2:0.2430238,c3:0.3584906,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:5750,x:34892,y:32421,ptovrint:False,ptlb:outline_width,ptin:_outline_width,varname:node_5750,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:317,x:34001,y:32844,varname:node_317,prsc:2,v1:-0.6;n:type:ShaderForge.SFN_Max,id:9165,x:33799,y:32687,varname:node_9165,prsc:2|A-84-OUT,B-6424-RGB;proporder:82-216-6424-2892-5750;pass:END;sub:END;*/

Shader "Shader Forge/Examples/Custom Lighting" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Bands ("Bands", Float ) = 3
        _Coloroscuro ("Color oscuro", Color) = (0.3301887,0.2694464,0.2694464,1)
        _node_2892 ("node_2892", Color) = (0.1910822,0.2430238,0.3584906,1)
        _outline_width ("outline_width", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _node_2892;
            uniform float _outline_width;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_outline_width,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(_node_2892.rgb,0);
            }
            ENDCG
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Bands;
            uniform float4 _Coloroscuro;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_84 = (_Diffuse_var.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1)); // Diffuse Light
                float3 finalColor = (attenuation*_LightColor0.rgb*(node_84+max(node_84,_Coloroscuro.rgb)+_Diffuse_var.rgb+(-0.6)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Bands;
            uniform float4 _Coloroscuro;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_84 = (_Diffuse_var.rgb*floor(max(0,dot(lightDirection,normalDirection)) * _Bands) / (_Bands - 1)); // Diffuse Light
                float3 finalColor = (attenuation*_LightColor0.rgb*(node_84+max(node_84,_Coloroscuro.rgb)+_Diffuse_var.rgb+(-0.6)));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
