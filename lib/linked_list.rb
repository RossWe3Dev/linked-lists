require_relative "node"

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
      @tail.next_node = entry # ditch .value to store node reference in next_node
    end
    @tail = entry
    @size += 1
  end

  def prepend(value)
    entry = Node.new(value)
    if @head.nil?
      @tail = entry
    else
      entry.next_node = @head
    end
    @head = entry
    @size += 1
  end

  def at(index)
    return nil if index > size

    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end
end
