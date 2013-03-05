//////////////////////////////////
/// Material structure.
//////////////////////////////////
struct Material
{
    lowp vec3  ambient;
    lowp vec4  diffuse;
    lowp vec3  specular;
    lowp float shininess;
};

//////////////////////////////////
/// Light structure.
//////////////////////////////////
struct Light
{
    lowp vec3 position;
    lowp vec3 direction;
    lowp vec3 colour;
};

//////////////////////////////////
/// Uniforms.
//////////////////////////////////
uniform mediump mat4 uMvp;
uniform mediump mat4 uModel;

//////////////////////////////////
/// Attributs.
//////////////////////////////////
attribute lowp vec3 aPosition;
attribute lowp vec4  aColor;

//////////////////////////////////
/// Varying.
//////////////////////////////////
varying lowp vec4 vColor;

//////////////////////////////////
/// Main function.
//////////////////////////////////
void main() 
{
	vColor		  = aColor;

    gl_Position   = (uMvp * uModel) * vec4( aPosition, 1.0);
}