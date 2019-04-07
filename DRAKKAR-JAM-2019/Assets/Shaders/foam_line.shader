// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33140,y:32602,varname:node_3138,prsc:2|emission-7241-RGB;n:type:ShaderForge.SFN_Color,id:7241,x:32196,y:32775,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_TexCoord,id:482,x:31757,y:32933,varname:node_482,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2652,x:31974,y:32954,varname:node_2652,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-482-UVOUT;n:type:ShaderForge.SFN_Length,id:8405,x:32164,y:33026,varname:node_8405,prsc:2|IN-2652-OUT;n:type:ShaderForge.SFN_Posterize,id:7062,x:32562,y:32984,varname:node_7062,prsc:2|IN-9065-OUT,STPS-2329-OUT;n:type:ShaderForge.SFN_Clamp01,id:5310,x:32741,y:32984,varname:node_5310,prsc:2|IN-7062-OUT;n:type:ShaderForge.SFN_Vector1,id:2329,x:32351,y:33193,varname:node_2329,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:9065,x:32397,y:33026,varname:node_9065,prsc:2|A-8405-OUT,B-2858-OUT;n:type:ShaderForge.SFN_Vector1,id:2858,x:32216,y:33155,varname:node_2858,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_OneMinus,id:4007,x:32912,y:32970,varname:node_4007,prsc:2|IN-5310-OUT;n:type:ShaderForge.SFN_Time,id:4930,x:31803,y:33238,varname:node_4930,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4700,x:32192,y:33294,varname:node_4700,prsc:2|A-482-U,B-4930-T,C-5996-OUT,D-7002-OUT;n:type:ShaderForge.SFN_Sin,id:7467,x:32514,y:33284,varname:node_7467,prsc:2|IN-4700-OUT;n:type:ShaderForge.SFN_Vector1,id:5996,x:31952,y:33427,varname:node_5996,prsc:2,v1:6.283185;n:type:ShaderForge.SFN_Add,id:9003,x:32330,y:33500,varname:node_9003,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7002,x:31946,y:33550,varname:node_7002,prsc:2,v1:2;proporder:7241;pass:END;sub:END;*/

Shader "Shader Forge/foam_line" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
