describe ReplaceTempWithChain::Example1 do

  describe "#sum_evens" do
    context 'with numbers 2, 6, 3' do
      it 'returns 8' do
        example1 = build :replace_temp_with_chain1, numbers: [2, 6, 3]
        expect(example1.sum_evens).to eq(8)
      end
    end
  end

end

