require 'spec_helper'

describe ReplaceTempWithQuery::Example1 do
  describe '#price' do
    context 'item price is 10 and quantity is 10' do
      it 'returns 98' do
        example1 = build :replace_temp_with_query1, item_price: 10, quantity: 10
        expect(example1.price).to eq(98)
      end
    end
    context 'item price is 10 and quantity is 10' do
      it 'returns 9500' do
        example1 = build :replace_temp_with_query1, item_price: 1000, quantity: 10
        expect(example1.price).to eq(9500)
      end
    end
  end
end
