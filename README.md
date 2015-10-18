# blur_image [![Build Status](https://travis-ci.org/koic/blur_image.svg)](https://travis-ci.org/koic/blur_image) [![Gem Version](https://badge.fury.io/rb/blur_image.svg)](http://badge.fury.io/rb/blur_image)

blur image.

## USAGE (Using with command line)

An example `blue_image` command.

```
$ blur_image path/to/original_file path/to/blurred_file
```

### A little more in detail

You can specify sharpness (blur condition) in the `-s` option. That value is default 10.

```
$ blur_image -s10 path/to/original_file path/to/blurred_file
```

## USAGE (Using with Programming Ruby)

An example Ruby code.

```ruby
require 'blur_image'

original_image = File.read('path/to/original_file')

blurred_image = BlurImage.blur(original_image)

blurred_image.write('path/to/blurred_file')
```

## REQUIREMENTS

* [MiniMagick](https://github.com/minimagick/minimagick)

## INSTALL

Add these lines to your application's Gemfile:

```
gem 'blur_image'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install blur_image
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

blur_image is released under the [MIT License](http://www.opensource.org/licenses/MIT).
