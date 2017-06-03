class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    hh = @seconds / 3600
    mm = (@seconds - hh * 3600) / 60
    ss = (@seconds - hh * 3600) - mm * 60
    array = []
    array.push(hh, mm, ss)
    array.map! { |time|
      if (time <= 9)
        "0#{time}"
      else
        time
      end
    }
    return array.join(":")
  end

end
