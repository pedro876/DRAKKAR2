// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34490,y:32493,varname:node_3138,prsc:2|emission-7756-RGB,custl-1677-OUT,clip-7645-OUT,voffset-1981-OUT;n:type:ShaderForge.SFN_Tex2d,id:7756,x:33510,y:32750,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_7756,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6da572218120d0049b599e7dddfc278e,ntxv:3,isnm:False|UVIN-827-OUT;n:type:ShaderForge.SFN_TexCoord,id:1738,x:32685,y:32646,varname:node_1738,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9712,x:32885,y:32712,varname:node_9712,prsc:2,frmn:0,frmx:1,tomn:-5,tomx:5|IN-1738-UVOUT;n:type:ShaderForge.SFN_Time,id:6080,x:32685,y:32850,varname:node_6080,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6134,x:32885,y:32950,varname:node_6134,prsc:2|A-6080-TSL,B-1252-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1252,x:32675,y:33035,varname:node_1252,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3247-XYZ;n:type:ShaderForge.SFN_Add,id:827,x:33187,y:32743,varname:node_827,prsc:2|A-9712-OUT,B-6134-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3247,x:32460,y:33014,ptovrint:False,ptlb:DirectionXY,ptin:_DirectionXY,varname:node_3247,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:-1,v3:0,v4:0;n:type:ShaderForge.SFN_Length,id:1178,x:33150,y:32955,varname:node_1178,prsc:2|IN-9712-OUT;n:type:ShaderForge.SFN_Posterize,id:4442,x:33451,y:33067,varname:node_4442,prsc:2|IN-4118-OUT,STPS-9080-OUT;n:type:ShaderForge.SFN_Vector1,id:9080,x:32937,y:33335,varname:node_9080,prsc:2,v1:2;n:type:ShaderForge.SFN_OneMinus,id:7645,x:33783,y:33007,varname:node_7645,prsc:2|IN-364-OUT;n:type:ShaderForge.SFN_Clamp01,id:364,x:33598,y:33036,varname:node_364,prsc:2|IN-4442-OUT;n:type:ShaderForge.SFN_Add,id:4118,x:33334,y:32955,varname:node_4118,prsc:2|A-1178-OUT,B-7114-OUT;n:type:ShaderForge.SFN_Vector1,id:7114,x:32983,y:33135,varname:node_7114,prsc:2,v1:-0.9;n:type:ShaderForge.SFN_Tex2d,id:8765,x:33229,y:32516,ptovrint:False,ptlb:node_8765,ptin:_node_8765,varname:node_8765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-9712-OUT;n:type:ShaderForge.SFN_Min,id:251,x:33421,y:32566,varname:node_251,prsc:2|A-8765-RGB,B-4118-OUT;n:type:ShaderForge.SFN_Multiply,id:1677,x:33608,y:32523,varname:node_1677,prsc:2|A-8459-OUT,B-8765-RGB;n:type:ShaderForge.SFN_Vector1,id:8459,x:33420,y:32372,varname:node_8459,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Add,id:6345,x:34057,y:32814,varname:node_6345,prsc:2|A-7756-RGB,B-9312-OUT;n:type:ShaderForge.SFN_Subtract,id:6338,x:33953,y:33142,varname:node_6338,prsc:2|A-7645-OUT,B-3605-R;n:type:ShaderForge.SFN_Multiply,id:3940,x:34104,y:33299,varname:node_3940,prsc:2|A-6338-OUT,B-7412-OUT;n:type:ShaderForge.SFN_Noise,id:7412,x:33257,y:33309,varname:node_7412,prsc:2|XY-9712-OUT;n:type:ShaderForge.SFN_Sin,id:5814,x:33492,y:33259,varname:node_5814,prsc:2|IN-6080-T;n:type:ShaderForge.SFN_Min,id:2092,x:34194,y:33119,varname:node_2092,prsc:2|A-8765-RGB,B-6338-OUT;n:type:ShaderForge.SFN_Smoothstep,id:8006,x:34370,y:33249,varname:node_8006,prsc:2|A-2092-OUT,B-8812-OUT,V-9080-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:6418,x:34539,y:33220,varname:node_6418,prsc:2,min:0,max:1|IN-8006-OUT;n:type:ShaderForge.SFN_OneMinus,id:9312,x:34695,y:33184,varname:node_9312,prsc:2|IN-6418-OUT;n:type:ShaderForge.SFN_Multiply,id:7919,x:33651,y:33480,varname:node_7919,prsc:2|A-5814-OUT,B-1496-OUT;n:type:ShaderForge.SFN_Vector1,id:1496,x:33374,y:33602,varname:node_1496,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Add,id:8812,x:33902,y:33520,varname:node_8812,prsc:2|A-7919-OUT,B-1123-OUT;n:type:ShaderForge.SFN_Vector1,id:1123,x:33633,y:33681,varname:node_1123,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Tex2d,id:3605,x:33728,y:33242,ptovrint:False,ptlb:node_3605,ptin:_node_3605,varname:node_3605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c3d66a8056f9db345b1ea380aa7e815d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:1981,x:34865,y:33166,varname:node_1981,prsc:2,frmn:0,frmx:1,tomn:0,tomx:8|IN-9312-OUT;proporder:7756-3247-8765-3605;pass:END;sub:END;*/

Shader "Shader Forge/water_main" {
    Properties {
        _Texture ("Texture", 2D) = "bump" {}
        _DirectionXY ("DirectionXY", Vector) = (1,-1,0,0)
        _node_8765 ("node_8765", 2D) = "white" {}
        _node_3605 ("node_3605", 2D) = "white" {}
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
            uniform float4 _DirectionXY;
            uniform sampler2D _node_8765; uniform float4 _node_8765_ST;
            uniform sampler2D _node_3605; uniform float4 _node_3605_ST;
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
                float2 node_9712 = (o.uv0*10.0+-5.0);
                float4 _node_8765_var = tex2Dlod(_node_8765,float4(TRANSFORM_TEX(node_9712, _node_8765),0.0,0));
                float node_4118 = (length(node_9712)+(-0.9));
                float node_9080 = 2.0;
                float node_7645 = (1.0 - saturate(floor(node_4118 * node_9080) / (node_9080 - 1)));
                float4 _node_3605_var = tex2Dlod(_node_3605,float4(TRANSFORM_TEX(o.uv0, _node_3605),0.0,0));
                float node_6338 = (node_7645-_node_3605_var.r);
                float4 node_6080 = _Time;
                float node_8812 = ((sin(node_6080.g)*0.25)+0.75);
                float3 node_9312 = (1.0 - clamp(smoothstep( min(_node_8765_var.rgb,node_6338), float3(node_8812,node_8812,node_8812), float3(node_9080,node_9080,node_9080) ),0,1));
                v.vertex.xyz += (node_9312*8.0+0.0);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_9712 = (i.uv0*10.0+-5.0);
                float node_4118 = (length(node_9712)+(-0.9));
                float node_9080 = 2.0;
                float node_7645 = (1.0 - saturate(floor(node_4118 * node_9080) / (node_9080 - 1)));
                clip(node_7645 - 0.5);
////// Lighting:
////// Emissive:
                float4 node_6080 = _Time;
                float2 node_827 = (node_9712+(node_6080.r*_DirectionXY.rgb.rg));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_827, _Texture));
                float3 emissive = _Texture_var.rgb;
                float4 _node_8765_var = tex2D(_node_8765,TRANSFORM_TEX(node_9712, _node_8765));
                float3 finalColor = emissive + (0.3*_node_8765_var.rgb);
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
            uniform sampler2D _node_8765; uniform float4 _node_8765_ST;
            uniform sampler2D _node_3605; uniform float4 _node_3605_ST;
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
                float2 node_9712 = (o.uv0*10.0+-5.0);
                float4 _node_8765_var = tex2Dlod(_node_8765,float4(TRANSFORM_TEX(node_9712, _node_8765),0.0,0));
                float node_4118 = (length(node_9712)+(-0.9));
                float node_9080 = 2.0;
                float node_7645 = (1.0 - saturate(floor(node_4118 * node_9080) / (node_9080 - 1)));
                float4 _node_3605_var = tex2Dlod(_node_3605,float4(TRANSFORM_TEX(o.uv0, _node_3605),0.0,0));
                float node_6338 = (node_7645-_node_3605_var.r);
                float4 node_6080 = _Time;
                float node_8812 = ((sin(node_6080.g)*0.25)+0.75);
                float3 node_9312 = (1.0 - clamp(smoothstep( min(_node_8765_var.rgb,node_6338), float3(node_8812,node_8812,node_8812), float3(node_9080,node_9080,node_9080) ),0,1));
                v.vertex.xyz += (node_9312*8.0+0.0);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_9712 = (i.uv0*10.0+-5.0);
                float node_4118 = (length(node_9712)+(-0.9));
                float node_9080 = 2.0;
                float node_7645 = (1.0 - saturate(floor(node_4118 * node_9080) / (node_9080 - 1)));
                clip(node_7645 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
