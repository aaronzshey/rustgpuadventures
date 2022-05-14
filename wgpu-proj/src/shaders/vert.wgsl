// start
struct VertexOutput {
	[[builtin(position)]] pos: vec4<f32>;
};

[[stage(vertex)]]
fn main( [[builtin(position)]] pos: vec4<f32> ) -> VertexOutput {

var out: VertexOutput;
out.pos = pos.x, 
return VertexOutput((pos.x, pos.y, 0.0, f32(1)));

}