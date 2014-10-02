module ExtractMethod

  class Example1

    attr_accessor :orders, :name

    def initialize
      @orders = []
    end

    def print_owing
      outstanding = calculate_outstanding
      
      print_banner

      print_details outstanding

    end

    def calculate_outstanding
      @orders.!
      outstanding = 0.0
      @orders.each do |order|
        outstanding += order.amount
      end
      outstanding
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
