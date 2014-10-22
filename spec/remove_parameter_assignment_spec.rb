require 'spec_helper'

describe RemoveParameterAssignment::Example do
  describe '#discount(value, quantity, year_to_date)' do

    context 'when value is 10, ' do
      before :each do
        @example = build :remove_parameter_assignment
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
          it 'returns 10' do
            expect(@example.discount(@value, @quantity, @year_to_date)).to eq(10)
          end
        end

        context 'and year_to_date is 15000' do
          before :each do
            @year_to_date = 15000
          end
          it 'returns 6' do
            expect(@example.discount(@value, @quantity, @year_to_date)).to eq(6)
          end
        end

      end

    end

  end
end

