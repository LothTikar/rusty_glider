#version 400

in vec3 shad_color;

void main()
{
	gl_FragColor = vec4(shad_color.r,shad_color.g,shad_color.b,1.0);
}
