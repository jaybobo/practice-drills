require 'rspec'
require 'roman_numeral_converter'

#Jim Weirich - Roman Numerals Kata
#https://www.youtube.com/watch?v=983zk0eqYLY


describe RomanNumeralConverter do
  let(:converter) { RomanNumeralConverter.new }

  def convert(n)
    converter.convert(n)
  end

  it "expects I for 1" do
    expect(convert(1)).to eq("I")
  end

  it "expects II for 2" do
    expect(convert(2)).to eq("II")
  end

  it "expects IV for 4" do
    expect(convert(4)).to eq("IV")
  end

  it "expect V for 5" do
    expect(convert(5)).to eq("V")
  end

  it "expect VI for 6" do
    expect(convert(6)).to eq("VI")
  end

  it "expect X for 10" do
    expect(convert(10)).to eq("X")
  end

  it "expect VI for 20" do
    expect(convert(20)).to eq("XX")
  end
end