class LinkedList
  attr_reader :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    entry = Node.new(value)
    if @head.nil?
      @head = entry
    else
      @tail.next_node = entry.value # using .value for readability
    end
    @tail = entry
    @size += 1
  end

  def prepend(value)
    entry = Node.new(value)
    if @head.nil?
      @tail = entry
    else
      entry.next_node = @head.value # using .value for readability
    end
    @head = entry
    @size += 1
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end

list = LinkedList.new

list.append("cat")
list.append("parrot")
list.prepend("dog")

p list
p list.size
p list.head
p list.tail
