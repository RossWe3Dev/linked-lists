require_relative "lib/linked_list"

list = LinkedList.new

list.append("cat")
list.append("parrot")
list.prepend("dog")
list.append("hamster")
list.append("snake")
list.append("turtle")

p list
puts "\nsize = #{list.size}"
print "\nhead = "
p list.head
print "\ntail = "
p list.tail
puts "\ntesting #at()"
p list.at(0)
p list.at(1)
p list.at(4)
p list.at(6)
puts "\ntesting #pop()"
list.pop
p list
puts "\ntesting #contains?(value)"
puts "List contains 'cat'?"
p list.contains?("cat")
puts "List contains 'elefant'?"
p list.contains?("elefant")
puts "\ntesting #find(value)"
list.find("cat")
list.find("snake")
list.find("elefant")
puts "\ntesting custom #to_s"
puts list
puts "\ntesting #insert_at(value, index)"
list.insert_at("horse", 3)
puts list
list.insert_at("elefant", 7)
list.insert_at("elefant", 6)
puts list
puts "\nsize is now = #{list.size}"
