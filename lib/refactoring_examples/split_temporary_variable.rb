module SplitTemporaryVariable

  class Example1
    attr_accessor :delay, :primary_force, :secondary_force, :mass

    def distance_traveled time
      delay = [time, @delay].min
      primary_distance(delay) + secondary_distance(time - delay)
    end

    def primary_acc
      @primary_force / @mass
    end

    def primary_vel
      primary_acc * @delay
    end

    def secondary_acc
      (@primary_force + @secondary_force) / @mass
    end

    def primary_distance time
      0.5 * primary_acc * time ** 2
    end

    def secondary_distance time
      if time > 0
        primary_vel * time + 5 * secondary_acc * time ** 2
      else
        0
      end
    end

  end

end
