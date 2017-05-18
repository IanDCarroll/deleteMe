class IanStrscan
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def eos?
    @string.empty?
  end

  def scan(regex)
    "abc"
  end
end
