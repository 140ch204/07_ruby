require_relative '../lib/caesar_cipher'

describe "caesar cipher method" do
    it "traduces " do
        expect(caesar_cipher("z", 1)).to eq("a")
    end

    it "traduces " do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
  
end
