require_relative "lib/linked_list"

list = LinkedList.new

list.append("cat")
list.append("parrot")
list.prepend("dog")
list.append("hamster")
list.append("snake")
list.append("turtle")

p list
p list.size
p list.head
p list.tail
puts "\ntesting at()"
p list.at(0)
p list.at(1)
p list.at(4)
p list.at(7)
puts "\ntesting pop()"
list.pop
p list
