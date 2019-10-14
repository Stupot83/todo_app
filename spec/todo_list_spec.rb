Dir["./lib/*.rb"].each { |file| require file }

describe "TodoList" do
  before :each do
    @todo_list = TodoList.new
  end

  it "should create an instance of the TodoList class" do
    expect(@todo_list).to be_instance_of(TodoList)
  end

  it "should allow a Todo to be added to the TodoList" do
    @todo = Todo.new("Testing Todo")
    @todo_list.add(@todo)
    expect(@todo_list.list).to include("Testing Todo")
  end
end
