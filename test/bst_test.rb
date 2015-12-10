require 'minitest'
require 'binary_search_tree'
require 'node'
require 'pry'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @tree = BinarySearchTree.new
  end
#creating a tree with empty root
  def test_new_tree_empty_root
    assert_equal nil, @tree.root
  end
# insert method adds a node at root
  def test_insert_adds_node_at_root
    @tree.insert("a")
    assert_equal "a", @tree.root.value
  end
#insert method returns depth of root (0)
  def test_insert_returns_depth_0_if_just_root
    return_value = @tree.insert("a")
    assert_equal 0, return_value
  end
#insert method adds a node extended from root to left
  def test_insert_node_to_left_of_root
    @tree.insert("b")
    @tree.insert("a")
    refute_equal nil, @tree.root.left
  end

#insert method returns 1 when 1 node added after root
  def test_insert_returns_1_when_2_nodes_added
    @tree.insert("b")
    return_value = @tree.insert("a")
    assert_equal 1, return_value
  end
#insert method adds a node extended from root to right
  def test_insert_node_to_right
    @tree.insert("c")
    @tree.insert("a")
    @tree.insert("d")
    refute_equal nil, @tree.root.right
  end
#insert method adds a node extended from root to left to left
  def test_insert_adds_node_left_of_left_of_root
    @tree.insert("c")
    @tree.insert("b")
    @tree.insert("a")
    refute_equal nil, @tree.root.left.left
  end
  #include? method returns true if value exists
  def test_return_method_truthy
    @tree.insert("a")
    @tree.insert("c")
    assert_equal true, @tree.includes?("c")
  end
  # include?(value) method returns false if value does not exist
  def test_return_method_falsey
    @tree.insert("b")
    @tree.insert("a")
    refute_equal true, @tree.includes?("c")
  end
  # depth_of(value) method returns tree depth for item
  def test_depth_of_value_returns_depth_1_node
    @tree.insert("a")
    assert_equal 0, @tree.depth_of?("a")
  end
  #depth_of(value) returns 1 if 2 nodes deep
  def test_depth_two_levels
    @tree.insert("a")
    @tree.insert("b")
    assert_equal 1, @tree.depth_of?("b")
  end
  #depth_of(value) returns 2 if 3 nodes deep
  def test_depth_three_levels
    @tree.insert("c")
    @tree.insert("b")
    @tree.insert("a")
    assert_equal 2, @tree.depth_of?("a")
  end
  #depth_of(value) method returns false if value does not exist
  def test_depth_value_not_exist
    @tree.insert("c")
    refute_equal 0, @tree.depth_of?("a")
  end
  #max returns root, one node
  def test_max_1_node
    @tree.insert("a")
    assert_equal "a", @tree.max
  end
  #max returns root if 2 nodes an 2nd node left of root
  def test_max_2_nodes_one_to_left
    @tree.insert("b")
    @tree.insert("a")
    assert_equal "b", @tree.max
  end
  #max returns node on right if root and node on either side
  def test_max_3_nodes_one_on_both_sides_of_root
    @tree.insert("b")
    @tree.insert("a")
    @tree.insert("c")
    assert_equal "c", @tree.max
  end
  #min returns root if only one node
  def test_min_root_only_node
    @tree.insert("a")
    assert_equal "a", @tree.min
  end

  def test_min_root_and_smaller_node
    @tree.insert("b")
    @tree.insert("a")
    assert_equal "a", @tree.min
  end

  def test_min_root_and_nodes_on_either_side
    @tree.insert("b")
    @tree.insert("a")
    @tree.insert("c")
    assert_equal "a", @tree.min
  end
  #sort returns array of node elements in ascending order
  def test_return_array_root_node
    @tree.insert("f")
    assert_equal ["f"], @tree.sort
  end
  #sort returns array of two nodes, 1 left and root
  def test_return_sorted_array_two_nodes
    @tree.insert("b")
    @tree.insert("a")
    assert_equal ["ab"], @tree.sort
  end
  #load('document name'), loads document, inserts tree, returns number of
  #unique values inserted to tree
  def test_load_loads_document
  end

end
