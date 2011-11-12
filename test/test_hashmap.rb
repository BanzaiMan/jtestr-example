require 'java'
class HashMapTests < Test::Unit::TestCase
  def setup
    @map = java.util.HashMap.new
  end

  def test_that_an_entry_can_be_added
    @map.put "foo", "bar"
    assert_equal "bar", @map.get("foo")
  end

  def test_empty_key_set_iterator_throws_exception
    assert_raises(java.util.NoSuchElementException) do
      @map.key_set.iterator.next
    end
  end
end
