#version 300 es
precision highp float;

in vec4 position;
in vec2 texCoord;

uniform float time;
uniform mat4 modelview;
uniform mat4 proj;

out vec2 texcoord;
out vec2 screenPos;

void main() {
   texcoord = texCoord;
   vec4 pos = modelview * position;
   screenPos = pos.xy;
   gl_Position = proj * pos;
}
