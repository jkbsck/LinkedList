require_relative 'LinkedList'
require 'objspace'

# testing

init_value = 'hoe'
linked_list1 = LinkedList.new(init_value)
p linked_list1.node_value
p linked_list1.next_node
p linked_list1.to_s

linked_list1.append('george')
p linked_list1.to_s

linked_list1.prepend('jolana')
p linked_list1.to_s

p linked_list1.node_value
p linked_list1.next_node
p linked_list1.size
p linked_list1.head
p linked_list1.tail

linked_list1.append('jesus from hood')
p linked_list1.to_s

linked_list1.prepend('damnpeggi')
p linked_list1.to_s

p ObjectSpace.memsize_of(linked_list1.next_node)

p linked_list1.at(1).vlue
p linked_list1.at(4).vlue
p linked_list1.at(5).vlue

linked_list1.pop
p linked_list1.to_s

p linked_list1.at(4).vlue

p linked_list1.contains('hoe')
p linked_list1.contains('hoes')
p linked_list1.find('damnpeggi')
p linked_list1.find('hoe')

linked_list1.insert_at('jesusinho', 2)
p linked_list1.to_s

linked_list1.remove_at(4)
p linked_list1.to_s
