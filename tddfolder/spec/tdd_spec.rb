
require 'tdd.rb'

describe "Array#my_uniq" do
    let(:arr) {[4,4,5,5,6,7]}
    it "should return an array" do 
        expect(arr.my_uniq).to eq([4,5,6,7])
    end

    it 'shouldnt return duplicate numbers' do 
        expect(arr.my_uniq).to contain_exactly(4,5,6,7)
    end

end

describe "Array#two_sum" do 

    let(:arr) {[5,3,-3,6,4,9,-5]}
    let(:arr2) {[1,2,3,4,5]}
    it 'return an empty array if no pairs found' do
        expect(arr2.two_sum).to eq([])
    end

    it 'should return pairs with the same element' do 
        expect([3,-3,-3,5,-5,-3].two_sum).to eq([[0,1],[0,2],[0,5],[3,4]])
    end

    it "returns index pairs of numbers, whos sum equals zero" do 
        expect(arr.two_sum).to contain_exactly([1,2],[0,6])
    end

    it 'it needs to be sorted' do
        expect(arr.two_sum).to eq([[0,6],[1,2]])
    end
end

describe 'Array#my_transpose' do

    let(:row)  {[[0, 1, 2],[3, 4, 5],[6, 7, 8]]}

    it 'will convert between the row-oriented and column-oriented representations' do
        expect(row.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end

describe 'Array#stock_picker' do 
    let (:arr) {[6, 5, 9, 12, 4, 8]}

    it'return pair of best day to buy and best day to sell' do
        expect(arr.stock_picker).to eq([1,3])
    end

    it 'cant sell stock before you buy it' do 
        expect(arr.stock_picker).not_to eq([4,3])
    end

end

describe 'towers_of_hanoi' do 

    


end



