require 'spec_helper'

describe InlineTemp::Example1 do
  describe '#too_expensive? order' do

    context 'when base price for the order is 1200' do
      it 'is true' do
        example1 = build :inline_temp1
        order = build :inline_temp_order, base_price: 1200
        expect(example1.too_expensive? order).to be true
      end
    end

    context 'when base price for the order is 999' do
      it 'is false' do
        example1 = build :inline_temp1
        order = build :inline_temp_order, base_price: 999
        expect(example1.too_expensive? order).to be false
      end
    end

  end
end

