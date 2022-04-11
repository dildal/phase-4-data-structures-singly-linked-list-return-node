require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head.nil? || n < 1
      return nil
    end

    current = head
    list_depth = 1
    while(current.next_node)
      current = current.next_node
      list_depth += 1
    end

    if(n > list_depth)
      return nil
    end
    current = head
    while(list_depth > n)
      current = current.next_node
      list_depth -= 1
    end
    current.value
  end

end
