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
    if @head.nil?
      @head = value
      @tail = value
    else
      Node.next_node = @head
      @head = entry
    end
  end

  # adds a new node containing 'value' to the end of the list
  # pbq
  def append(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      @tail.next_node = value
      @tail = entry
    end
  end

  # returns the total number of nodes in the list
  def size; end

  # returns the first node in the list
  def head; end

  # returns the last node in the list
  def tail; end

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
  def to_s; end
end
