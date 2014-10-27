require 'spec_helper'

describe SubstituteAlgorithm::Example1 do

  describe '#found_friends' do
    before :each do
      @example = build :substitute_algorithm
    end
    context 'in ["John", "Dave"]' do
      before :each do
        @people = ["John", "Dave"]
      end
      it 'returns ["John"]' do
        expect(@example.found_friends @people).to match(["John"])
      end
    end
    context 'in ["David", Kent"]' do
      before :each do
        @people = ["David", "Kent"]
      end
      it 'returns ["Kent"]' do
        expect(@example.found_friends @people).to match(["Kent"])
      end

    end
  end

end

