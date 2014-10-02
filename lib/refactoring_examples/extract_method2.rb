module ExtractMethod

  class Example2

    attr_accessor :orders, :name

    def initialize
      @orders = []
    end

    def print_owing previous_amount
      print_banner
      print_details calculate_outstanding(previous_amount * 1.2)
    end

    def calculate_outstanding initial_amount
      @orders.map(&:amount).
              reduce(initial_amount, :+)
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
