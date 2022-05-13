#version 450 

layout(binding = 0) uniform MyBlock {
    vec2 u_resolution;
};
precision highp float;
out vec4 outColor;

void main() {
	vec2 st = gl_FragCoord.xy/u_resolution;
	outColor = vec4(st.x,st.y,0.0,1.0);
}