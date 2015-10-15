describe BlurImage do
  describe '.blur' do
    let(:original_image) { File.read('spec/fixtures/original_image.png') }
    let(:blurred_image)  { File.read('spec/fixtures/blurred_image.png') }

    subject { BlurImage.blur(original_image) }

    it 'same average pixel count' do
      expect(subject['%[mean]']).to eq MiniMagick::Image.read(blurred_image)['%[mean]']
    end
  end
end
