require 'spec_helper'

RSpec.describe ExtractMethod::Example1 do
  describe "#print_owing(previous_amount)" do
    context 'with a previous amount of 4.0, for Floum, with one order of 5.00$' do
      it 'outputs to stdout' do
        example2 = build :example2, name: 'Floum'
        order = build :order, amount: 5.0
        example2.orders << order
        expect{example2.print_owing 4.0}.to output("*************************
***** Customer Owes *****
*************************
name: Floum
amount: 9.8
").to_stdout 
      end
    end
    context 'with a previous amount of 1.0, for Veve, with 4 orders of 3.00$' do
      it 'outputs to stdout' do
        example2 = build :example2, name: 'Veve'
        orders = build_list :order, 4, amount: 3.0
        example2.orders = orders
        expect{example2.print_owing 1.0}.to output("*************************
***** Customer Owes *****
*************************
name: Veve
amount: 13.2
").to_stdout 
      end
    end
  end
end

