class IanStrscan
  attr_reader :string

  def initialize(string)
    @string = string.dup
  end

  def eos?
    @string.empty?
  end

  def scan(regex)
    match = @string[regex]
    if @string.start_with? match
      @string.sub!(match, "")
      match
    end
    rescue TypeError
  end
end
