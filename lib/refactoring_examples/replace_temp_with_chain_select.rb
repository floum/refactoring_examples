module ReplaceTempWithChain

  class Select

    def self.with_option option
      select = self.new
      select.options << option
      select
    end

    def options
      @options ||= []
    end

    def add_option arg
      options << arg
      self
    end

    alias_method :and, :add_option

  end

end

