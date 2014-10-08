module IntroduceExplainingVariable

  class Example1
    attr_accessor :quantity, :item_price

    def price
      # price is base price - quantity discount + shipping
      return @quantity * @item_price -
        [0, @quantity - 500].max * @item_price * 0.05 +
        [@quantity * @item_price * 0.1, 100.0].min
    end

  end

end
