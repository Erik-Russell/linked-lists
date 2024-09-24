# frozen_string_literal: true

require_relative 'node'

# LinkedList - represents the full list
class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  # adds a new node containing 'value' to the start of the list
  # ptq
  def prepend(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  # adds a new node containing 'value' to the end of the list
  # pbq
  def append(value)
    new_node = Node.new(value)
    puts "Appending value: #{value}"

    if @head.nil?
      puts 'List is empty. Setting head and tail to the new node.'
      @head = new_node
      @tail = new_node
    else
      puts "Current tail: #{@tail.value}, adding new node with value #{new_node.value}"
      @tail.next_node = new_node
      @tail = new_node
      puts "New tail is now: #{@tail.value}"
    end
  end

  # returns the total number of nodes in the list
  def size; end

  # returns the first node in the list
  attr_reader :head

  # returns the last node in the list
  attr_reader :tail

  # returns the node at the given index
  def at(index); end

  # removes the last element from the list
  def pop; end

  # returns True if the passed in value is in the list and otherwise returns False
  def contains?(value); end

  # returns the index of the node containing value, or nil if not found
  def find(value); end

  # represent a LinkedList object as strings, for printing or previewing
  # ( value ) -> ( value ) -> nil
  def to_s
    current = @head
    str = ''
    while current
      str += "( #{current.value} ) -> "
      current = current.next_node
    end
    str += 'nil'
    str
  end
end

list = LinkedList.new
list.append(10)
list.append(20)
list.append(30)

puts list

puts list.head.value
