$:.push File.expand_path('../lib', __FILE__)

require 'blur_image/version'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'blur_image'
  s.summary = 'blur image.'
  s.description = 'blur image.'

  s.version = BlurImage::VERSION

  s.license = 'MIT'

  s.authors = ['Koichi ITO']
  s.email = 'koic.ito@gmail.com'
  s.homepage = 'http://github.com/koic/blur_image'

  s.files = Dir[
    'README.md',
    'lib/**/*',
    'bin/blur_image',
    'LICENSE'
  ]
  s.require_paths = ['lib']
  s.executables = `git ls-files -- bin/*`.split("\n").map {|f| File.basename(f) }

  s.required_ruby_version = '>= 2.0.0'
  s.license = 'MIT'

  s.add_dependency('mini_magick')
end
