require 'mini_magick'

module BlurImage
  def blur(src_path, dest_path, sharpness = 10)
    image = MiniMagick::Image.read(File.read(src_path))

    image.combine_options do |c|
      c.blur "#{sharpness}x#{sharpness}"
    end

    image.write(dest_path)
  end

  module_function :blur
end
