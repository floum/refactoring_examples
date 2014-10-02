require 'spec_helper'

RSpec.describe ExtractMethod::Example1 do
  describe "#print_owing" do
    context 'for Floum, with one order of 5.00$' do
      it 'outputs to stdout' do
        example1 = build :extract_method1, name: 'Floum'
        order = build :order, amount: 5.0
        example1.orders << order
        expect{example1.print_owing}.to output("*************************
***** Customer Owes *****
*************************
name: Floum
amount: 5.0
").to_stdout 
      end
    end
    context 'for Veve, with ten orders of 4.50$' do
      it 'outputs to stdout' do
        example1 = build :extract_method1, name: 'Veve'
        orders = build_list :order, 10, amount: 4.5
        example1.orders = orders
        expect{example1.print_owing}.to output("*************************
***** Customer Owes *****
*************************
name: Veve
amount: 45.0
").to_stdout 
      end
    end
  end
end

