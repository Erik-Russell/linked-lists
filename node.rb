# frozen_string_literal: true

# Node - contains value and next_node
class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
