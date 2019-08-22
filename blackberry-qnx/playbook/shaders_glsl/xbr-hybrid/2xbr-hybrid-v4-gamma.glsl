// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0011;
vec4 _v0011;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _v0011 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _r0011 = _v0011.x*MVPMatrix[0];
    _r0011 = _r0011 + _v0011.y*MVPMatrix[1];
    _r0011 = _r0011 + _v0011.z*MVPMatrix[2];
    _r0011 = _r0011 + _v0011.w*MVPMatrix[3];
    _OUT._position1 = vec4(float(_r0011.x), float(_r0011.y), float(_r0011.z), float(_r0011.w));
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT.VARt1 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = _texCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = _texCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = _texCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 VARt7;
COMPAT_VARYING     vec4 VARt6;
COMPAT_VARYING     vec4 VARt5;
COMPAT_VARYING     vec4 VARt4;
COMPAT_VARYING     vec4 VARt3;
COMPAT_VARYING     vec4 VARt2;
COMPAT_VARYING     vec4 VARt1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
vec4 _ret_0;
vec3 _TMP67;
vec3 _TMP82;
vec3 _TMP87;
vec3 _TMP86;
float _TMP78;
float _TMP77;
float _TMP76;
float _TMP84;
float _TMP66;
float _TMP65;
float _TMP64;
vec3 _TMP85;
vec3 _TMP63;
vec3 _TMP62;
vec3 _TMP61;
vec3 _TMP60;
float _TMP81;
float _TMP80;
float _TMP79;
vec3 _TMP59;
vec3 _TMP58;
vec3 _TMP57;
vec3 _TMP56;
vec3 _TMP55;
vec3 _TMP54;
vec3 _TMP53;
vec3 _TMP52;
vec4 _TMP51;
vec3 _TMP75;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec3 _TMP46;
vec4 _TMP39;
vec4 _TMP38;
vec4 _TMP88;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
float _TMP83;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0102;
vec4 _r0146;
vec4 _r0156;
vec4 _r0166;
vec4 _r0176;
vec4 _r0186;
vec4 _r0196;
vec4 _TMP207;
vec4 _a0210;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP219;
vec4 _a0222;
vec4 _TMP225;
vec4 _a0228;
vec4 _TMP231;
vec4 _a0234;
vec4 _TMP237;
vec4 _a0240;
vec4 _TMP243;
vec4 _a0246;
vec4 _TMP249;
vec4 _a0252;
vec4 _TMP255;
vec4 _a0258;
vec4 _TMP261;
vec4 _a0264;
vec4 _TMP267;
vec4 _a0270;
vec4 _x0274;
vec4 _TMP275;
vec4 _x0284;
vec4 _TMP285;
vec4 _x0294;
vec4 _TMP295;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP307;
vec4 _a0310;
vec4 _TMP311;
vec4 _a0314;
vec4 _TMP315;
vec4 _a0318;
vec4 _TMP319;
vec4 _a0322;
vec4 _TMP325;
vec4 _a0328;
vec4 _TMP329;
vec4 _a0332;
vec4 _TMP333;
vec4 _a0336;
vec4 _TMP337;
vec4 _a0340;
vec4 _TMP341;
vec4 _a0344;
vec4 _TMP345;
vec4 _a0348;
vec4 _TMP349;
vec4 _a0352;
vec4 _TMP353;
vec4 _a0356;
vec4 _TMP357;
vec4 _a0360;
vec4 _TMP361;
vec4 _a0364;
vec4 _TMP365;
vec4 _a0368;
vec3 _b0372;
vec3 _b0376;
vec3 _TMP377;
vec3 _a0378;
vec3 _b0386;
vec3 _b0390;
vec3 _TMP391;
vec3 _a0392;
vec3 _b0426;
vec3 _b0436;
vec3 _df0438;
vec3 _a0440;
vec3 _df0442;
vec3 _a0444;
vec3 _TMP457;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A2;
    vec3 _B2;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _G5;
    vec3 _H5;
    vec3 _I5;
    vec3 _A0;
    vec3 _D0;
    vec3 _G0;
    vec3 _C4;
    vec3 _F4;
    vec3 _I4;
    vec4 _b1;
    vec4 _c3;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec3 _res;
    vec3 _n1;
    vec3 _n2;
    vec3 _n3;
    vec3 _n4;
    vec3 _s;
    vec3 _aa;
    vec3 _bb;
    vec3 _cc;
    vec3 _dd;
    vec3 _t;
    vec3 _m;
    vec3 _s1;
    vec3 _s0;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    _x0102 = TEX0.xy*TextureSize;
    _fp = fract(_x0102);
    _TMP0 = COMPAT_TEXTURE(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, VARt2.xw);
    _A2 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, VARt2.yw);
    _B2 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, VARt2.zw);
    _C = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = COMPAT_TEXTURE(Texture, VARt3.xw);
    _D = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = COMPAT_TEXTURE(Texture, VARt3.yw);
    _E = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = COMPAT_TEXTURE(Texture, VARt3.zw);
    _F = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = COMPAT_TEXTURE(Texture, VARt4.xw);
    _G = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = COMPAT_TEXTURE(Texture, VARt4.yw);
    _H = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = COMPAT_TEXTURE(Texture, VARt4.zw);
    _I = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = COMPAT_TEXTURE(Texture, VARt5.xw);
    _G5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = COMPAT_TEXTURE(Texture, VARt5.yw);
    _H5 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = COMPAT_TEXTURE(Texture, VARt5.zw);
    _I5 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = COMPAT_TEXTURE(Texture, VARt6.xy);
    _A0 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP16 = COMPAT_TEXTURE(Texture, VARt6.xz);
    _D0 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP17 = COMPAT_TEXTURE(Texture, VARt6.xw);
    _G0 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _TMP18 = COMPAT_TEXTURE(Texture, VARt7.xy);
    _C4 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP19 = COMPAT_TEXTURE(Texture, VARt7.xz);
    _F4 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _TMP20 = COMPAT_TEXTURE(Texture, VARt7.xw);
    _I4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP83 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0146.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0146.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0146.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0146.w = float(_TMP83);
    _b1 = vec4(float(_r0146.x), float(_r0146.y), float(_r0146.z), float(_r0146.w));
    _TMP83 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0156.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0156.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0156.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0156.w = float(_TMP83);
    _c3 = vec4(float(_r0156.x), float(_r0156.y), float(_r0156.z), float(_r0156.w));
    _TMP83 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0166.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0166.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0166.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0166.w = float(_TMP83);
    _e1 = vec4(float(_r0166.x), float(_r0166.y), float(_r0166.z), float(_r0166.w));
    _TMP83 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0176.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0176.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0176.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0176.w = float(_TMP83);
    _i4 = vec4(float(_r0176.x), float(_r0176.y), float(_r0176.z), float(_r0176.w));
    _TMP83 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0186.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0186.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0186.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0186.w = float(_TMP83);
    _i5 = vec4(float(_r0186.x), float(_r0186.y), float(_r0186.z), float(_r0186.w));
    _TMP83 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0196.x = float(_TMP83);
    _TMP83 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0196.y = float(_TMP83);
    _TMP83 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0196.z = float(_TMP83);
    _TMP83 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0196.w = float(_TMP83);
    _h5 = vec4(float(_r0196.x), float(_r0196.y), float(_r0196.z), float(_r0196.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0210 = _b1.wxyz - _b1;
    _TMP207 = abs(_a0210);
    _TMP27 = bvec4(_TMP207.x < 1.50000000E+01, _TMP207.y < 1.50000000E+01, _TMP207.z < 1.50000000E+01, _TMP207.w < 1.50000000E+01);
    _a0216 = _b1.wxyz - _c3;
    _TMP213 = abs(_a0216);
    _TMP28 = bvec4(_TMP213.x < 1.50000000E+01, _TMP213.y < 1.50000000E+01, _TMP213.z < 1.50000000E+01, _TMP213.w < 1.50000000E+01);
    _a0222 = _b1.zwxy - _b1.yzwx;
    _TMP219 = abs(_a0222);
    _TMP29 = bvec4(_TMP219.x < 1.50000000E+01, _TMP219.y < 1.50000000E+01, _TMP219.z < 1.50000000E+01, _TMP219.w < 1.50000000E+01);
    _a0228 = _b1.zwxy - _c3.zwxy;
    _TMP225 = abs(_a0228);
    _TMP30 = bvec4(_TMP225.x < 1.50000000E+01, _TMP225.y < 1.50000000E+01, _TMP225.z < 1.50000000E+01, _TMP225.w < 1.50000000E+01);
    _a0234 = _e1 - _c3.wxyz;
    _TMP231 = abs(_a0234);
    _TMP31 = bvec4(_TMP231.x < 1.50000000E+01, _TMP231.y < 1.50000000E+01, _TMP231.z < 1.50000000E+01, _TMP231.w < 1.50000000E+01);
    _a0240 = _b1.wxyz - _h5.yzwx;
    _TMP237 = abs(_a0240);
    _TMP32 = bvec4(_TMP237.x < 1.50000000E+01, _TMP237.y < 1.50000000E+01, _TMP237.z < 1.50000000E+01, _TMP237.w < 1.50000000E+01);
    _a0246 = _b1.wxyz - _i4;
    _TMP243 = abs(_a0246);
    _TMP33 = bvec4(_TMP243.x < 1.50000000E+01, _TMP243.y < 1.50000000E+01, _TMP243.z < 1.50000000E+01, _TMP243.w < 1.50000000E+01);
    _a0252 = _b1.zwxy - _h5;
    _TMP249 = abs(_a0252);
    _TMP34 = bvec4(_TMP249.x < 1.50000000E+01, _TMP249.y < 1.50000000E+01, _TMP249.z < 1.50000000E+01, _TMP249.w < 1.50000000E+01);
    _a0258 = _b1.zwxy - _i5;
    _TMP255 = abs(_a0258);
    _TMP35 = bvec4(_TMP255.x < 1.50000000E+01, _TMP255.y < 1.50000000E+01, _TMP255.z < 1.50000000E+01, _TMP255.w < 1.50000000E+01);
    _a0264 = _e1 - _c3.zwxy;
    _TMP261 = abs(_a0264);
    _TMP36 = bvec4(_TMP261.x < 1.50000000E+01, _TMP261.y < 1.50000000E+01, _TMP261.z < 1.50000000E+01, _TMP261.w < 1.50000000E+01);
    _a0270 = _e1 - _c3;
    _TMP267 = abs(_a0270);
    _TMP37 = bvec4(_TMP267.x < 1.50000000E+01, _TMP267.y < 1.50000000E+01, _TMP267.z < 1.50000000E+01, _TMP267.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _x0274 = _fx - vec4( 1.00000000E+00, 0.00000000E+00, -1.00000000E+00, 0.00000000E+00);
    _TMP88 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0274);
    _TMP275 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP88);
    _fx45 = _TMP275*_TMP275*(3.00000000E+00 - 2.00000000E+00*_TMP275);
    _x0284 = _fx_left - vec4( 5.00000000E-01, 5.00000000E-01, -1.00000000E+00, -5.00000000E-01);
    _TMP88 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0284);
    _TMP285 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP88);
    _fx30 = _TMP285*_TMP285*(3.00000000E+00 - 2.00000000E+00*_TMP285);
    _x0294 = _fx_up - vec4( 1.50000000E+00, -5.00000000E-01, -1.50000000E+00, 0.00000000E+00);
    _TMP88 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0294);
    _TMP295 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP88);
    _fx60 = _TMP295*_TMP295*(3.00000000E+00 - 2.00000000E+00*_TMP295);
    _a0306 = _e1 - _c3;
    _TMP303 = abs(_a0306);
    _a0310 = _e1 - _c3.zwxy;
    _TMP307 = abs(_a0310);
    _a0314 = _c3.wxyz - _h5;
    _TMP311 = abs(_a0314);
    _a0318 = _c3.wxyz - _h5.yzwx;
    _TMP315 = abs(_a0318);
    _a0322 = _b1.zwxy - _b1.wxyz;
    _TMP319 = abs(_a0322);
    _TMP38 = _TMP303 + _TMP307 + _TMP311 + _TMP315 + 4.00000000E+00*_TMP319;
    _a0328 = _b1.zwxy - _b1.yzwx;
    _TMP325 = abs(_a0328);
    _a0332 = _b1.zwxy - _i5;
    _TMP329 = abs(_a0332);
    _a0336 = _b1.wxyz - _i4;
    _TMP333 = abs(_a0336);
    _a0340 = _b1.wxyz - _b1;
    _TMP337 = abs(_a0340);
    _a0344 = _e1 - _c3.wxyz;
    _TMP341 = abs(_a0344);
    _TMP39 = _TMP325 + _TMP329 + _TMP333 + _TMP337 + 4.00000000E+00*_TMP341;
    _edr = bvec4((_TMP38 + 3.50000000E+00).x < _TMP39.x && _interp_restriction_lv1.x, (_TMP38 + 3.50000000E+00).y < _TMP39.y && _interp_restriction_lv1.y, (_TMP38 + 3.50000000E+00).z < _TMP39.z && _interp_restriction_lv1.z, (_TMP38 + 3.50000000E+00).w < _TMP39.w && _interp_restriction_lv1.w);
    _a0348 = _b1.wxyz - _c3.zwxy;
    _TMP345 = abs(_a0348);
    _a0352 = _b1.zwxy - _c3;
    _TMP349 = abs(_a0352);
    _edr_left = bvec4((2.00000000E+00*_TMP345).x <= _TMP349.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP345).y <= _TMP349.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP345).z <= _TMP349.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP345).w <= _TMP349.w && _interp_restriction_lv2_left.w);
    _a0356 = _b1.wxyz - _c3.zwxy;
    _TMP353 = abs(_a0356);
    _a0360 = _b1.zwxy - _c3;
    _TMP357 = abs(_a0360);
    _edr_up = bvec4(_TMP353.x >= (2.00000000E+00*_TMP357).x && _interp_restriction_lv2_up.x, _TMP353.y >= (2.00000000E+00*_TMP357).y && _interp_restriction_lv2_up.y, _TMP353.z >= (2.00000000E+00*_TMP357).z && _interp_restriction_lv2_up.z, _TMP353.w >= (2.00000000E+00*_TMP357).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0364 = _e1 - _b1.wxyz;
    _TMP361 = abs(_a0364);
    _a0368 = _e1 - _b1.zwxy;
    _TMP365 = abs(_a0368);
    _px = bvec4(_TMP361.x <= _TMP365.x, _TMP361.y <= _TMP365.y, _TMP361.z <= _TMP365.z, _TMP361.w <= _TMP365.w);
    _n1 = vec3(float(_B11.x), float(_B11.y), float(_B11.z));
    _n2 = vec3(float(_B2.x), float(_B2.y), float(_B2.z));
    _s = vec3(float(_E.x), float(_E.y), float(_E.z));
    _n3 = vec3(float(_H.x), float(_H.y), float(_H.z));
    _n4 = vec3(float(_H5.x), float(_H5.y), float(_H5.z));
    _aa = _n2 - _n1;
    _bb = _s - _n2;
    _cc = _n3 - _s;
    _dd = _n4 - _n3;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s.x < 5.00000000E-01 ? (2.00000000E+00*_s).x : (2.00000000E+00*(1.00000000E+00 - _s)).x, _s.y < 5.00000000E-01 ? (2.00000000E+00*_s).y : (2.00000000E+00*(1.00000000E+00 - _s)).y, _s.z < 5.00000000E-01 ? (2.00000000E+00*_s).z : (2.00000000E+00*(1.00000000E+00 - _s)).z);
    _TMP46 = abs(_bb);
    _b0372 = 6.49999976E-01*_TMP46;
    _m = min(_m, _b0372);
    _TMP47 = abs(_cc);
    _b0376 = 6.49999976E-01*_TMP47;
    _m = min(_m, _b0376);
    _a0378 = -_m;
    _TMP75 = min(_m, _t);
    _TMP377 = max(_a0378, _TMP75);
    _s1 = (2.00000000E+00*_fp.y - 1.00000000E+00)*_TMP377 + _s;
    _n1 = vec3(float(_D0.x), float(_D0.y), float(_D0.z));
    _n2 = vec3(float(_D.x), float(_D.y), float(_D.z));
    _n3 = vec3(float(_F.x), float(_F.y), float(_F.z));
    _n4 = vec3(float(_F4.x), float(_F4.y), float(_F4.z));
    _aa = _n2 - _n1;
    _bb = _s1 - _n2;
    _cc = _n3 - _s1;
    _dd = _n4 - _n3;
    _t = (7.00000000E+00*(_bb + _cc) - 3.00000000E+00*(_aa + _dd))/1.60000000E+01;
    _m = vec3(_s1.x < 5.00000000E-01 ? (2.00000000E+00*_s1).x : (2.00000000E+00*(1.00000000E+00 - _s1)).x, _s1.y < 5.00000000E-01 ? (2.00000000E+00*_s1).y : (2.00000000E+00*(1.00000000E+00 - _s1)).y, _s1.z < 5.00000000E-01 ? (2.00000000E+00*_s1).z : (2.00000000E+00*(1.00000000E+00 - _s1)).z);
    _TMP48 = abs(_bb);
    _b0386 = 6.49999976E-01*_TMP48;
    _m = min(_m, _b0386);
    _TMP49 = abs(_cc);
    _b0390 = 6.49999976E-01*_TMP49;
    _m = min(_m, _b0390);
    _a0392 = -_m;
    _TMP75 = min(_m, _t);
    _TMP391 = max(_a0392, _TMP75);
    _s0 = (2.00000000E+00*_fp.x - 1.00000000E+00)*_TMP391 + _s1;
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _blend2 = 0.00000000E+00;
    _blend1 = 0.00000000E+00;
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP51 = max(_final30, _final60);
    _maximo = max(_TMP51, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP52 = _F;
        } else {
            _TMP52 = _H;
        } 
        _pix1 = _TMP52;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP53 = _B2;
            } else {
                _TMP53 = _F;
            } 
            _pix1 = _TMP53;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP54 = _D;
                } else {
                    _TMP54 = _B2;
                } 
                _pix1 = _TMP54;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP55 = _H;
                    } else {
                        _TMP55 = _D;
                    } 
                    _pix1 = _TMP55;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP56 = _H;
        } else {
            _TMP56 = _D;
        } 
        _pix2 = _TMP56;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP57 = _D;
            } else {
                _TMP57 = _B2;
            } 
            _pix2 = _TMP57;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP58 = _B2;
                } else {
                    _TMP58 = _F;
                } 
                _pix2 = _TMP58;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP59 = _F;
                    } else {
                        _TMP59 = _H;
                    } 
                    _pix2 = _TMP59;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _TMP84 = pow(float(_E.x), 2.40039062E+00);
    _TMP76 = float(_TMP84);
    _TMP84 = pow(float(_E.y), 2.40039062E+00);
    _TMP77 = float(_TMP84);
    _TMP84 = pow(float(_E.z), 2.40039062E+00);
    _TMP78 = float(_TMP84);
    _E = vec3(_TMP76, _TMP77, _TMP78);
    _TMP79 = pow(_s0.x, 2.40000010E+00);
    _TMP80 = pow(_s0.y, 2.40000010E+00);
    _TMP81 = pow(_s0.z, 2.40000010E+00);
    _s0 = vec3(_TMP79, _TMP80, _TMP81);
    _TMP84 = pow(float(_pix1.x), 2.40039062E+00);
    _TMP76 = float(_TMP84);
    _TMP84 = pow(float(_pix1.y), 2.40039062E+00);
    _TMP77 = float(_TMP84);
    _TMP84 = pow(float(_pix1.z), 2.40039062E+00);
    _TMP78 = float(_TMP84);
    _TMP60 = vec3(_TMP76, _TMP77, _TMP78);
    _b0426 = vec3(float(_TMP60.x), float(_TMP60.y), float(_TMP60.z));
    _TMP61 = _s0 + _blend1*(_b0426 - _s0);
    _res1 = vec3(float(_TMP61.x), float(_TMP61.y), float(_TMP61.z));
    _TMP84 = pow(float(_pix2.x), 2.40039062E+00);
    _TMP76 = float(_TMP84);
    _TMP84 = pow(float(_pix2.y), 2.40039062E+00);
    _TMP77 = float(_TMP84);
    _TMP84 = pow(float(_pix2.z), 2.40039062E+00);
    _TMP78 = float(_TMP84);
    _TMP62 = vec3(_TMP76, _TMP77, _TMP78);
    _b0436 = vec3(float(_TMP62.x), float(_TMP62.y), float(_TMP62.z));
    _TMP63 = _s0 + _blend2*(_b0436 - _s0);
    _res2 = vec3(float(_TMP63.x), float(_TMP63.y), float(_TMP63.z));
    _a0440 = _E - _res1;
    _TMP85 = abs(vec3(float(_a0440.x), float(_a0440.y), float(_a0440.z)));
    _df0438 = vec3(float(_TMP85.x), float(_TMP85.y), float(_TMP85.z));
    _TMP64 = _df0438.x + _df0438.y + _df0438.z;
    _a0444 = _E - _res2;
    _TMP85 = abs(vec3(float(_a0444.x), float(_a0444.y), float(_a0444.z)));
    _df0442 = vec3(float(_TMP85.x), float(_TMP85.y), float(_TMP85.z));
    _TMP65 = _df0442.x + _df0442.y + _df0442.z;
    _TMP66 = float((_TMP65 >= _TMP64));
    _res = _res1 + _TMP66*(_res2 - _res1);
    _TMP84 = pow(float(_res.x), 4.54589844E-01);
    _TMP76 = float(_TMP84);
    _TMP84 = pow(float(_res.y), 4.54589844E-01);
    _TMP77 = float(_TMP84);
    _TMP84 = pow(float(_res.z), 4.54589844E-01);
    _TMP78 = float(_TMP84);
    _TMP67 = vec3(_TMP76, _TMP77, _TMP78);
    _TMP86 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_TMP67.x), float(_TMP67.y), float(_TMP67.z)));
    _TMP82 = vec3(float(_TMP86.x), float(_TMP86.y), float(_TMP86.z));
    _TMP87 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP82.x), float(_TMP82.y), float(_TMP82.z)));
    _TMP457 = vec3(float(_TMP87.x), float(_TMP87.y), float(_TMP87.z));
    _ret_0 = vec4(float(_TMP457.x), float(_TMP457.y), float(_TMP457.z), 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
