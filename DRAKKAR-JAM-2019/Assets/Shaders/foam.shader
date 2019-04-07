// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33173,y:32509,varname:node_3138,prsc:2|emission-9930-OUT,custl-9930-OUT,clip-4007-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32411,y:32374,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:482,x:31757,y:32933,varname:node_482,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2652,x:31974,y:32954,varname:node_2652,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-482-UVOUT;n:type:ShaderForge.SFN_Length,id:8405,x:32196,y:32971,varname:node_8405,prsc:2|IN-2652-OUT;n:type:ShaderForge.SFN_Posterize,id:7062,x:32521,y:32919,varname:node_7062,prsc:2|IN-9065-OUT,STPS-2329-OUT;n:type:ShaderForge.SFN_Clamp01,id:5310,x:32735,y:32937,varname:node_5310,prsc:2|IN-7062-OUT;n:type:ShaderForge.SFN_Vector1,id:2329,x:32351,y:33193,varname:node_2329,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:9065,x:32351,y:33034,varname:node_9065,prsc:2|A-8405-OUT,B-2858-OUT;n:type:ShaderForge.SFN_Vector1,id:2858,x:32155,y:33173,varname:node_2858,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_OneMinus,id:4007,x:32909,y:32920,varname:node_4007,prsc:2|IN-5310-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:9365,x:32123,y:32760,varname:node_9365,prsc:2;n:type:ShaderForge.SFN_Lerp,id:9930,x:32720,y:32627,varname:node_9930,prsc:2|A-7241-RGB,B-1072-RGB,T-4920-R;n:type:ShaderForge.SFN_ComponentMask,id:4920,x:32382,y:32695,varname:node_4920,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-9365-XYZ;n:type:ShaderForge.SFN_Color,id:1072,x:32215,y:32491,ptovrint:False,ptlb:node_1072,ptin:_node_1072,varname:node_1072,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8584906,c2:0.8584906,c3:0.8584906,c4:1;proporder:7241-1072;pass:END;sub:END;*/

Shader "Shader Forge/foam_line" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_1072 ("node_1072", Color) = (0.8584906,0.8584906,0.8584906,1)
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
            uniform float4 _Color;
            uniform float4 _node_1072;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float node_2329 = 2.0;
                clip((1.0 - saturate(floor((length((i.uv0*2.0+-1.0))+(-0.5)) * node_2329) / (node_2329 - 1))) - 0.5);
////// Lighting:
////// Emissive:
                float3 node_9930 = lerp(_Color.rgb,_node_1072.rgb,i.posWorld.rgb.rb.r);
                float3 emissive = node_9930;
                float3 finalColor = emissive + node_9930;
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
                float node_2329 = 2.0;
                clip((1.0 - saturate(floor((length((i.uv0*2.0+-1.0))+(-0.5)) * node_2329) / (node_2329 - 1))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
