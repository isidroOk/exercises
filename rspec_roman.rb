require './NumberA'

#success cases

describe NumberA do
  it "finds the equivalent roman number" do
    arabic_number = NumberA.new
    expect(arabic_number.arabic_to_roman(10)).to eq("X") #here we have Arrange, Act and Assert together
    expect(arabic_number.arabic_to_roman(1500)).to eq("MD")
    expect(arabic_number.arabic_to_roman(1)).to eq("I")
  end

  #failure cases

  it "finds the equivalent roman number" do
    arabic_number = NumberA.new
    expect(arabic_number.arabic_to_roman(5)).to eq("X") #here we have Arrange, Act and Assert together

    expect(arabic_number.arabic_to_roman(15)).to eq("MD")
    expect(arabic_number.arabic_to_roman(5)).to eq("I")
  end

end
