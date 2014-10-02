require 'spec_helper'
include ExtractMethod

describe ExtractMethod::Example1 do
  context 'for Floum' do
    before :each do
      @example = Example1.new
      @example.name = 'Floum'
    end
    context 'with a first 5.00$ order' do
      before :each do
        @order = Order.new
        @order.amount = 5.00
        @example.orders << @order
      end
      describe 'print owing' do
        it 'prints a banner' do
          expect{@example.print_owing}.to output("*************************
***** Customer Owes *****
*************************
name: Floum
amount: 5.0
").to_stdout
        end
      end
    end
  end

end
