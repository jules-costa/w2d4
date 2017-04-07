require_relative "stack"
require_relative "minmaxstack"

class StackQueue

  def initialize
    @store = Stack.new
    @store2 = Stack.new
  end

  def dequeue
    @store.pop
  end

  def enqueue(el)
    @store << el
  end

  def size
    @store2.count
  end

  def empty?
    @store2.empty?
  end

end
