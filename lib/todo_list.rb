class TodoList
  attr_reader :list

  def initialize
    @list = []
  end

  def add(item)
    @list.push(item.text)
  end
end
