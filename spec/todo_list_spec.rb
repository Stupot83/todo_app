Dir["./lib/*.rb"].each { |file| require file }

describe "Todo" do
  before :each do
    @todo_list = TodoList.new
  end

  it "should create an instance of the TodoList class" do
    expect(@todo_list).to be_instance_of(TodoList)
  end
end
