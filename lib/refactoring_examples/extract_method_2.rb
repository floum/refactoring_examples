module ExtractMethod

  class Example2

    attr_accessor :orders, :name

    def initialize
      @orders = []
    end

    def print_owing previous_amount
      outstanding = previous_amount * 1.2 

      # calculate_outstanding
      @orders.each do |order|
        outstanding += order.amount
      end

      print_banner
      print_details outstanding
    end

    def print_banner
      puts "*************************"
      puts "***** Customer Owes *****"
      puts "*************************"
    end

    def print_details outstanding
      puts "name: #{@name}"
      puts "amount: #{outstanding}"
    end

  end
  
  class Order
    attr_accessor :amount
  end

end
