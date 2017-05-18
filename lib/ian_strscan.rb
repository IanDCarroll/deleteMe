class IanStrscan
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def eos?
    @string.empty?
  end

  def scan(regex)
    match = @string[regex]
    if @string.start_with? match
      return match
    end
    nil
  end
end
