module SubstituteAlgorithm

  class Example1

    attr_accessor :people

    def found_friends(people)
      people.select do |person|
        %w(John Don Kent).include? person
      end
    end

  end

end

