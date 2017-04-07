require_relative "stackqueue"

class MinMaxStack

  def initialize
    @store = Stack.new
    @max = nil
    @min = nil
  end

  def min
    @min
  end

  def max
    @max
  end

  def update_min(el)
    @min = el if min.nil?
    @min = el if el < @min
  end

  def update_max(el)
    @max = el if @max.nil?
    @max = el if el > max
  end

  def dequeue
    @store.pop
  end

  def enqueue(el)
    @store << el
    update_max(el)
    update_min(el)
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

end
