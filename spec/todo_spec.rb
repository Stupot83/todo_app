require "todo"

describe "Todo" do
  before :each do
    @todo = Todo.new("Testing Todo")
  end

  it "should create an instance of the Todo class" do
    expect(@todo).to be_instance_of(Todo)
  end

  it "should contain a string with the instruction" do
    expect(@todo.string).to eq("Testing Todo")
  end
end
