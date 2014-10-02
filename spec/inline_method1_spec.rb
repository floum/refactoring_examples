require 'spec_helper'

describe InlineMethod do
  describe '#get_rating' do

    context 'with 7 late deliveries' do
      it 'returns 1' do
        example1 = build :inline_method1, number_of_late_deliveries: 7
        expect(example1.get_rating).to eq(2)
      end
    end

    context 'with 3 late deliveries' do
      it 'returns 1' do
        example1 = build :inline_method1, number_of_late_deliveries: 3
        expect(example1.get_rating).to eq(1)
      end
    end

  end
end

