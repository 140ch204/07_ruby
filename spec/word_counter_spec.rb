require_relative '../lib/word_counter'

describe "trade_between_day_hash method" do
    it "calculate benefit between two days " do
        expect(word_counter("Howdy partner, sit down! How's it going?",["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}) 
    end
  
end

describe "trade_between_day_hash method" do
    it "calculate benefit between two days " do
        expect(one_word_counter("below",["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"] )).to eq({"below"=>1, "low"=>1}) 
    end
  
end