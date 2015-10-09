require 'mini_magick'

module BlurImage
  DEFAULT_SHARPNESS = 10

  def blur(original_file, sharpness = DEFAULT_SHARPNESS)
    image = MiniMagick::Image.read(original_file)

    image.combine_options do |c|
      c.blur "#{sharpness}x#{sharpness}"
    end

    image
  end

  module_function :blur
end
