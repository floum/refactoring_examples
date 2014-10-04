module ReplaceTempWithChain

  class Example1

    attr_accessor :numbers

    def sum_evens
      numbers.select(&:even?).
        reduce(:+)
    end

  end

end

