require_relative '../lib/trader'

describe "trade_between_day_hash method" do
    it "calculate benefit between two days " do
        expect(trade_between_day_hash([1,1,1,1,1], 1,3)).to eq({trade: 0, buy: 1, sell: 3}) 
    end

    it "calculate benefit between two days  " do
        expect(trade_between_day_hash([17, 3, 6, 9, 15, 8, 7, 1, 10], 1,3)).to eq({trade: 6, buy: 1, sell: 3}) 
    end

    it "calculate benefit between two days  " do
        expect(trade_between_day_hash([17, 3, 1, 9, 15, 18, 7, 16, 12], 2,5)).to eq({trade: 17, buy: 2, sell: 5}) 
    end

    it "calculate benefit between two days  " do
        expect(trade_between_day_hash([17, 3, 1, 9, 15, 18, 7, 16, 12], 1,5)).to eq({trade: 15, buy: 1, sell: 5}) 
    end

  
end


describe "day_trader method : calculate best days to trade" do

    it " buy 1 sells 4 : +12 profit  " do
        expect(day_trader([17, 3, 6, 9, 15, 8, 7, 1, 10])).to eq([1,4]) 
    end

    it " buy 2 sells 5 : +17 profit  " do
        expect(day_trader([17, 3, 1, 9, 15, 18, 7, 16, 12])).to eq([2,5]) 
    end
  
end