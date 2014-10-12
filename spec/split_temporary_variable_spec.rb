require 'spec_helper'

describe SplitTemporaryVariable::Example1 do
  context '#distance traveled' do
    before :each do
      @example1 = build :split_temporary_variable1
    end
    context 'over 10s' do
      before :each do
        @time = 10
      end
      context ', a 5g object, a primary force of 10N' do
        before :each do
          @example1.mass = 5
          @example1.primary_force = 10
        end
        context 'and a secondary force of 5N applied after a delay of 2s' do
          before :each do
            @example1.delay = 2
            @example1.secondary_force = 5
          end
          it 'returns 996' do
            expect(@example1.distance_traveled(@time)).to eq(996)
          end
        end
        context 'and a secondary force of 10N applied after a delay of 7s' do
          before :each do
            @example1.delay = 7
            @example1.secondary_force = 10
          end
          it 'returns 271' do
            expect(@example1.distance_traveled(@time)).to eq(271)
          end
        end
      end
    end
    context 'over 2s' do
      before :each do
        @time = 2
      end
      context ', 1g object, a primary force of 1N' do
        before :each do
          @example1.mass = 1
          @example1.primary_force = 1
        end
        context 'and a secondary force of 1N applied after a delay of 1s' do
          before :each do
            @example1.delay = 1
            @example1.secondary_force = 1
          end
          it 'returns 150' do
            expect(@example1.distance_traveled(@time)).to eq(11.5)
          end
        end
        context 'and a secondary force of 10N applied after a delay of 1s' do
          before :each do
            @example1.delay = 1
            @example1.secondary_force = 10
          end
          it 'returns 56.5' do
            expect(@example1.distance_traveled(@time)).to eq(56.5)
          end
        end
      end
    end
  end

end
