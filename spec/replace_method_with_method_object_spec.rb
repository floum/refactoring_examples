require 'spec_helper'

describe ReplaceMethodWithMethodObject::Account do
  describe '#gamma(value, quantity, year_to_date)' do

    context 'when value is 10, ' do
      before :each do
        @example = build :replace_method_with_method_object
        @value = 10
      end

      context 'quantity is 75 ' do
        before :each do
          @quantity = 75
        end

        context 'and year_to_date is 5000' do
          before :each do
            @year_to_date = 5000
          end
          it 'returns [750, 50080, 350560]' do
            expect(@example.gamma(@value, @quantity, @year_to_date)).to eq([750, 50080, 350560])
          end
        end

        context 'and year_to_date is 15000' do
          before :each do
            @year_to_date = 15000
          end
          it 'returns [750, 150080, 1050560]' do
            expect(@example.gamma(@value, @quantity, @year_to_date)).to eq([750, 150080, 1050560])
          end
        end

      end

    end

  end

end
