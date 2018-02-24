#version 400

layout(location = 0) in vec2 pos;
layout(location = 1) in vec3 color;

out vec3 shad_color;

void main()
{
	shad_color = color;
	gl_Position = vec4(pos.x,pos.y,0.0,0.0);
}
