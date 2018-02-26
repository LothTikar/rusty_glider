#version 400

layout(location = 0) in vec3 pos;
layout(location = 1) in vec3 color;

uniform vec2 rot;

out vec3 shad_color;
out vec3 tex_coord;

void main()
{
    tex_coord = pos;
	shad_color = color;
	vec3 rot_pos = pos;
	rot_pos *= mat3(
		cos(rot[0]),0,sin(rot[0]),
		0,1,0,
		-sin(rot[0]),0,cos(rot[0])
		);
	rot_pos *= mat3(
		1,0,0,
		0,cos(rot[1]),-sin(rot[1]),
		0,sin(rot[1]),cos(rot[1])
		);
	gl_Position = vec4(rot_pos.x,rot_pos.y,rot_pos.z,1.0);
}
