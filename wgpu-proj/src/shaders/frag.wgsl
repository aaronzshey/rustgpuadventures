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
