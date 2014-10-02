module InlineTemp

  class Example1

    def too_expensive? an_order
      base_price = an_order.base_price
      return (base_price > 1000)
    end

  end

  class Order
    attr_accessor :base_price
  end

end
