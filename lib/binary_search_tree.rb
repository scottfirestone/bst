require_relative 'node'
# require_relative 'file_reader'
require 'pry'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(element)
    depth_of_new_node = 0
    if @root == nil
      @root = Node.new(element)
    else
      current = @root
      while nil != current
        if (element < current.value) && (current.left ==nil)
          current.left = Node.new(element)
          depth_of_new_node +=1
          break
        elsif (element > current.value) && (current.right ==nil)
          current.right = Node.new(element)
          depth_of_new_node +=1
          break
        elsif (element < current.value)
          current = current.left
          depth_of_new_node +=1
        else (element > current.value)
          current = current.right
          depth_of_new_node +=1
        end
      end
    end
    return depth_of_new_node
  end

  def includes?(element)
    inclusion = false
    if element == @root.value
      inclusion = true
    else
      current = @root
      while nil != current
        if current.value == element
          inclusion = true
          break
        else
          if (element < current.value)
            current = current.left
          else
            current = current.right
          end
        end
      end
    end
    return inclusion
  end

  def depth_of?(element)
    current = @root
    depth = 0
    if current.value == element
      depth = 0
    else
      while nil != current
        if current.value == element
          return depth
          break
        else
          if (element < current.value)
            current = current.left
            depth +=1
          else
            current = current.right
            depth +=1
          end
        end
      end
    end
  end

  def max
    current = @root
    if current.right == nil
      return current.value
    else
      while current.right !=nil
        current = current.right
      end
      return current.value
    end
  end

  def min
    current = @root
    if current.left == nil
      return current.value
    else
      while current.left != nil
        current = current.left
      end
      return current.value
    end
  end

  # def sort(current=@root, sorted_array = [])
  #   if (current.left != nil) && (current.right!=nil)
  #     sorted_array < current.value
  #     if current.left != nil
  #       current = current.left
  #       sort(current, sorted_array)
  #     end
  #     sorted_array < current.value
  #     if current.right != nil
  #       current = current.right
  #       sort(current, sorted_array)
  #     end
  #   else
  #     sorted_array << current.value
  #   end
  #   sorted_array
  # end
  #
  # def load
  #
  # end
end

# binding.pry
