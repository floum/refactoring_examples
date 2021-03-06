module ReplaceMethodWithMethodObject

  class Account

    def gamma(input_val, quantity, year_to_date)
      Gamma.new(self, input_val, quantity, year_to_date).compute
    end

  end

  class Gamma
    attr_reader :account,
                :input_val,
                :quantity,
                :year_to_date,
                :important_value1,
                :important_value2,
                :important_value3

    def initialize account, input_val, quantity, year_to_date
      @account = account
      @input_val = input_val
      @quantity = quantity
      @year_to_date = year_to_date
    end

    def compute
      @important_value1 = (@input_val * @quantity)
      @important_value2 = (@input_val * @year_to_date) + 100

      if (@year_to_date - @important_value1) > 100
        @important_value2 -= 20
      end
      @important_value3 = @important_value2 * 7
      @important_value3 - 2 * @important_value1

      [@important_value1, @important_value2, @important_value3]
    end

  end

end

