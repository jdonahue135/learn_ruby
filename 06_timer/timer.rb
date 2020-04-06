class Timer
  attr_accessor :seconds, :time_string
  def initialize()
    @seconds = 0
  end

  def time_string
    hours = (@seconds/3600).round()
    minutes = (@seconds/60).round() % 60
    seconds = @seconds % 60
    @time_string = format_number(hours) + ":" + format_number(minutes) + ":" + format_number(seconds)
  end

  def format_number(number)
    if number < 10
      number = "0" + number.to_s
    else
      number = number.to_s
    end
  end
end