// Vertex shader

struct VertexOutput {
    [[builtin(position)]] clip_position: vec4<f32>;
};

[[stage(vertex)]]
fn vs_main(
    [[builtin(vertex_index)]] in_vertex_index: u32,
) -> VertexOutput {
    var out: VertexOutput;
    let x = f32(1 - i32(in_vertex_index)) * 0.5;
    let y = f32(i32(in_vertex_index & 1u) * 2 - 1) * 0.5;
    out.clip_position = vec4<f32>(x, y, 0.0, 1.0);
    return out;
}


// Fragment shader

[[stage(fragment)]]
fn fs_main(in: VertexOutput) -> [[location(0)]] vec4<f32> {
    return vec4<f32>(0.3, 0.2, 0.1, 1.0);
}

struct MyBlock {
    u_resolution: vec2<f32>;
};

[[group(0), binding(0)]]
var<uniform> global: MyBlock;
var<private> outColor: vec4<f32>;
var<private> gl_FragCoord: vec4<f32>;

fn main_1() {
    var st: vec2<f32>;

    let _e4 = gl_FragCoord;
    let _e6 = global.u_resolution;
    st = (_e4.xy / _e6);
    let _e9 = st;
    let _e11 = st;
    outColor = vec4<f32>(_e9.x, _e11.y, 0.0, 1.0);
    return;
}

[[stage(fragment)]]
fn main([[builtin(position)]] param: vec4<f32>) {
    gl_FragCoord = param;
    main_1();
    return;
}
