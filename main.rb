require_relative "lib/linked_list"

list = LinkedList.new

list.append("cat")
list.append("parrot")
list.prepend("dog")

p list
p list.size
p list.head
p list.tail
puts "testing at()"
p list.at(0)
p list.at(1)
p list.at(2)
p list.at(3)
