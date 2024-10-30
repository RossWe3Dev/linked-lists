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
puts "\ntesting contains?(value)"
puts "List contains 'cat'?"
p list.contains?("cat")
puts "List contains 'elefant'?"
p list.contains?("elefant")
puts "\ntesting find(value)"
list.find("cat")
list.find("snake")
list.find("elefant")
