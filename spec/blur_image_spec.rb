describe BlurImage do
  describe '.blur' do
    let(:original_image) { File.read('spec/fixtures/original_image.png') }
    let(:blur_image)     { File.read('spec/fixtures/blur_image.png') }

    subject { BlurImage.blur(original_image) }

    it 'same average pixel count' do
      expect(subject['%[mean]']).to eq MiniMagick::Image.read(blur_image)['%[mean]']
    end
  end
end
