require 'minitest'
require 'node'

class NodeTest < Minitest::Test

  #creating a node with nil value
  def test_create_new_node_nil_value
    node = Node.new(nil)
  end
  #creating a node with a value
  def test_create_new_node_with_value
    node = Node.new(1)
    assert_equal 1, node.value
  end
  #new node's left attribute equals nil when created
  def test_left_is_nil
    node = Node.new(1)
    assert_equal nil, node.left
  end
  #new node's right attribute equals nil when created
  def test_right_is_nil
    node = Node.new(1)
    assert_equal nil, node.right
  end

end
