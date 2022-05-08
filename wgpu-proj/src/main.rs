use wgpu_proj::run;
use winit::window::Window;
use pollster;

struct State {
    surface: wgpu::Surface,
    device: wgpu::Device,
    queue: wgpu::Queue,
    config: wgpu::SurfaceConfiguration,
    size: winit::dpi::PhysicalSize<u32>,
}


impl State {

}

	
fn main() {
    pollster::block_on(run());
}
