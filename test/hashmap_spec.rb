require 'java'

java_import java.util.HashMap

describe "An empty", HashMap do
  before :each do
    @hash_map = java.util.HashMap.new
  end

  it "should be able to add an entry to it" do
    @hash_map.put "foo", "bar"
    @hash_map.get("foo").should == "bar"
  end

  it "should not be empty after an entry has been added to it" do
    @hash_map.put "foo", "bar"
    @hash_map.should_not be_empty
  end

  it "should be empty" do
    @hash_map.should be_empty
  end
end
