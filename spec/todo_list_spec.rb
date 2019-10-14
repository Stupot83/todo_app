Dir["./lib/*.rb"].each { |file| require file }

describe "TodoList" do
  before :each do
    @todo_list = TodoList.new
    @todo = Todo.new("Testing Todo")
    @todo_list.add(@todo)
    @todo2 = Todo.new("Testing2 Todo2")
    @todo_list.add(@todo2)
    @todo3 = Todo.new("Testing3 Todo3")
    @todo_list.add(@todo3)
  end

  it "should create an instance of the TodoList class" do
    expect(@todo_list).to be_instance_of(TodoList)
  end

  it "should allow a Todo to be added to the TodoList" do
    expect(@todo_list.list).to include("Testing Todo", "Testing2 Todo2", "Testing3 Todo3")
  end

  it "should allow the user to print the list of Todos" do
    expect do @todo_list.print end.to output("* Testing Todo\n* Testing2 Todo2\n* Testing3 Todo3\n").to_stdout
  end
end
