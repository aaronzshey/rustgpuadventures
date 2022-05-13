struct VertexOutput {
    [[builtin(position)]] member: vec4<f32>;
};

var<private> pos_1: vec2<f32>;
var<private> gl_Position: vec4<f32>;

fn main_1() {
    let _e2 = pos_1;
    gl_Position = vec4<f32>(_e2.x, _e2.y, 0.0, f32(1));
    return;
}

[[stage(vertex)]]
fn main([[location(0)]] pos: vec2<f32>) -> VertexOutput {
    pos_1 = pos;
    main_1();
    let _e5 = gl_Position;
    return VertexOutput(_e5);
}
