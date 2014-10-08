require 'spec_helper'

describe IntroduceExplainingVariable::Example1 do
  describe '#price' do

    context 'for 10 items worth 5' do
      it 'returns 55' do
        expect(
          build(:introduce_explaining_variable1,
                quantity: 10,
                item_price: 5).
                price
        ).to eq(55)
      end
    end
    context 'for 20 items worth 50' do
      it 'returns 55' do
        expect(
          build(:introduce_explaining_variable1,
                quantity: 20,
                item_price: 50).
                price
        ).to eq(1100)
      end
    end
    context 'for 1 item worth 1.2' do
      it 'returns 1.32' do
        expect(
          build(:introduce_explaining_variable1,
                quantity: 1,
                item_price: 1.2).
                price
        ).to be_within(0.01).of(1.32)
      end
    end

  end
end

