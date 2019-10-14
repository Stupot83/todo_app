class Todo
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def text
    @string
  end
end
