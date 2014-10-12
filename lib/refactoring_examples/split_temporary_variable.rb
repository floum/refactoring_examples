module SplitTemporaryVariable

  class Example1
    attr_accessor :delay, :primary_force, :secondary_force, :mass

    def distance_traveled(time)
      acc = @primary_force / @mass # acc iss assigned
      primary_time = [time, @delay].min
      result = 0.5 * acc * primary_time * primary_time
      secondary_time = time - @delay
      if(secondary_time > 0)
        primary_vel = acc * @delay
        acc = (@primary_force + @secondary_force) / @mass # acc is reassigned
        result += primary_vel * secondary_time + 5 * acc * secondary_time *
          secondary_time
      end
      result
    end

  end

end
