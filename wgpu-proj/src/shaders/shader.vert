layout (location = 0) in vec2 pos;
layout (location = 1) out vec2 u_resolution;
void main() {
   gl_Position = vec4(pos, 0.0f, 1);
   
}