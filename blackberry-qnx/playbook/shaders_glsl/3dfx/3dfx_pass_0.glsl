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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
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
    vec4 _oColor;
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
float _TMP2;
float _TMP1;
float _TMP0;
float _TMP3;
uniform sampler2D Texture;
input_dummy _IN1;
float _x0011;
float _x0013;
float _x0015;
float _x0017;
float _x0019;
float _x0031;
float _x0033;
float _x0035;
float _x0039;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    output_dummy _OUT;
    vec2 _dithet;
    float _vertline1;
    float _vertline2;
    float _vertline3;
    float _horzline1;
    float _horzline2;
    float _horzline3;
    float _dithone;
    float _dithtwo;
    float _diththree;
    vec3 _dithonme;
    vec3 _reduceme;
    _OUT._color = COMPAT_TEXTURE(Texture, TEX0.xy);
    _dithet.x = TEX0.x*TextureSize.x;
    _dithet.y = TEX0.y*TextureSize.y;
    _x0011 = _dithet.x/2.00000000E+00;
    _TMP3 = floor(_x0011);
    _vertline1 = _dithet.x - 2.00000000E+00*_TMP3;
    _x0013 = _dithet.x + 1.00000000E+00;
    _x0015 = _x0013/2.00000000E+00;
    _TMP3 = floor(_x0015);
    _vertline2 = _x0013 - 2.00000000E+00*_TMP3;
    _x0017 = _dithet.x + 1.00000000E+00;
    _x0019 = _x0017/4.00000000E+00;
    _TMP3 = floor(_x0019);
    _vertline3 = _x0017 - 4.00000000E+00*_TMP3;
    _x0031 = _dithet.y/2.00000000E+00;
    _TMP3 = floor(_x0031);
    _horzline1 = _dithet.y - 2.00000000E+00*_TMP3;
    _x0033 = _dithet.y + 1.00000000E+00;
    _x0035 = _x0033/2.00000000E+00;
    _TMP3 = floor(_x0035);
    _horzline2 = _x0033 - 2.00000000E+00*_TMP3;
    _x0039 = _dithet.y/4.00000000E+00;
    _TMP3 = floor(_x0039);
    _horzline3 = _dithet.y - 4.00000000E+00*_TMP3;
    _dithone = _vertline1 + _horzline2;
    _dithtwo = _vertline2 + _horzline1;
    _diththree = _vertline3 + _horzline3;
    _dithone = _dithone*3.00000012E-01;
    _dithtwo = _dithtwo*3.00000012E-01 + 1.00000000E+00;
    _dithone = _dithone*_dithtwo;
    if (_dithone > 1.10000002E+00) { 
        _dithone = 1.16999996E+00;
    } else {
        if (_dithone < 8.99999976E-01) { 
            _dithone = 1.29999995E+00;
        } else {
            _dithone = 1.00000000E+00;
        } 
    } 
    if (_diththree > 1.10000002E+00) { 
        _diththree = 1.20000005E+00;
    } 
    if (_diththree < 1.10000002E+00) { 
        _diththree = 5.00000000E+00;
    } 
    if (_diththree == 5.00000000E+00) { 
        _diththree = 1.03999996E+00;
    } else {
        _diththree = 1.00000000E+00;
    } 
    _dithone = _dithone*_diththree;
    _dithone = _dithone - 1.00000000E+00;
    _dithone = pow(_dithone, 1.60000002E+00);
    _dithonme = _OUT._color.xyz;
    if (_dithone < _OUT._color.x) { 
        _dithonme.x = _OUT._color.x + 2.99999993E-02;
    } 
    if (_dithone < _OUT._color.y) { 
        _dithonme.y = _OUT._color.y + 2.99999993E-02;
    } 
    if (_dithone < _OUT._color.z) { 
        _dithonme.z = _OUT._color.z + 2.99999993E-02;
    } 
    _reduceme.x = _dithonme.x*3.20000000E+01;
    _TMP0 = floor(_reduceme.x);
    _reduceme.x = float(int(_TMP0));
    _reduceme.x = _reduceme.x/3.20000000E+01;
    _reduceme.y = _dithonme.y*6.40000000E+01;
    _TMP1 = floor(_reduceme.y);
    _reduceme.y = float(int(_TMP1));
    _reduceme.y = _reduceme.y/6.40000000E+01;
    _reduceme.z = _dithonme.z*3.20000000E+01;
    _TMP2 = floor(_reduceme.z);
    _reduceme.z = float(int(_TMP2));
    _reduceme.z = _reduceme.z/3.20000000E+01;
    _OUT._color.xyz = _reduceme.xyz;
    FragColor = _OUT._color;
    return;
} 
#endif
