require 'rspec'
require 'pig-latin'


describe PigConverter do
  context "first run" do

    let(:converter) { PigConverter.new("word") }

    it "should exist" do
    end

    it "expects word to eq old_word" do
      expect(converter.old_word).to eq("word")
    end
  end

  context "second run" do
    let(:converter) { PigConverter.new("igloo") }

    it "expect vowel words to not be converted" do
      expect(converter.new_word).to eq("igloo")
    end
  end

  context "third run" do
    let(:converter) { PigConverter.new("pig") }

    it "converts cons word into pig latin" do
      expect(converter.new_word).to eq("igpay")
    end
  end

end