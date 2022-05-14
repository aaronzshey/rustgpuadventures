use image::ImageBuffer;

fn main() {
    let imgx = 200;
    let imgy = 200;
    let constant = 255.99;
    // Create a new ImgBuf with width: imgx and height: imgy
    let mut imgbuf = ImageBuffer::new(imgx, imgy);

    // Iterate over the coordinates and pixels of the image
    for (x, y, pixel) in imgbuf.enumerate_pixels_mut() {
        let r = (x as f32 / imgx as f32) * constant;
        let g = ((imgy as f32 - y as f32) / imgy as f32) * constant;
        *pixel = image::Rgb([r as u8, g as u8, (constant * 0.2) as u8]);
        //println!("{:?}", (x,y,r,g));
    }
    // Save the image as “fractal.png”, the format is deduced from the path
    imgbuf.save("cpu.png").unwrap();
}
