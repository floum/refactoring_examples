require 'spec_helper'

describe ReplaceTempWithChain::Select do

  context 'without any option' do
    before :each do
      @select = build :replace_temp_with_chain_select
    end
    it 'does not have any option' do
      expect(@select).to have(0).options
    end
    context 'when added an option' do
      before :each do
        @select.add_option('1999')
      end
      it 'has one option' do
        expect(@select).to have(1).options
      end
    end
  end

end

