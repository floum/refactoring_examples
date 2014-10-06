require 'spec_helper'

describe ReplaceTempWithChain::Select do

  context "a Select with the option '1500' and '1600'" do
    it 'has two options' do
      select = Select.with_option('1500').and('1600')
      expect(select).to have(2).options
    end
  end
  context "with option '1' and '2' and '3'" do
    it 'has three options' do
      select = Select.with_option('1').and('2').and('3')
      expect(select).to have(3).options
    end

  end


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

