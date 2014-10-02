module InlineMethod

  class Example1
    
    attr_accessor :number_of_late_deliveries

    def get_rating
      more_than_five_late_deliveries ? 2 : 1
    end
    def more_than_five_late_deliveries
      @number_of_late_deliveries > 5
    end

  end

end
