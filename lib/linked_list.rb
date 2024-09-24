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
      @tail = new_node
    else
      new_node.next_node = @head
    end
    @head = new_node
  end

  # adds a new node containing 'value' to the end of the list
  # pbq
  def append(value)
    new_node = Node.new(value)
    # "Appending value: #{value}"
    if @head.nil?
      # 'List is empty. Setting head and tail to the new node.'
      @head = new_node
    else
      # "Current tail: #{@tail.value}, adding new node with value #{new_node.value}"
      @tail.next_node = new_node
      # "New tail is now: #{@tail.value}"
    end
    @tail = new_node
  end

  # returns the total number of nodes in the list
  def size
    current = @head
    count = 0

    # traverse the lsit and count nodes
    while current
      count += 1
      current = current.next_node
    end

    count
  end

  # returns the first node in the list
  attr_reader :head

  # returns the last node in the list
  attr_reader :tail

  # returns the node at the given index
  def at(index)
    current = @head
    while index.positive?
      index -= 1
      current = current.next_node
    end
    current
  end

  # removes the last element from the list
  def pop
    return nil if @head.nil?

    if @head == @tail
      @head = nil
      @tail = nil
    else
      second_to_last = at(size - 2)
      second_to_last.next_node = nil
      @tail = second_to_last
    end
  end

  # returns True if the passed in value is in the list and otherwise returns False
  def contains?(value); end

  # returns the index of the node containing value, or nil if not found
  def find(value)
    current = @head

    while current
      return true if current.value == value

      current = current.next_node
    end

    false
  end

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
