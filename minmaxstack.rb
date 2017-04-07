require_relative "stackqueue"

class MinMaxStack ##has logis to track min and max for each element in stack

  # attr_accessor :store

  def initialize
    @store = Stack.new
  end

  def min
    @store.peek[:min] unless empty? # ?????
  end

  def max
    @store.peek[:max] unless empty? #shows last item's max in store
  end

  def peek
    @store.peek[:value] unless empty?
  end

  def pop
    @store.pop[:value] unless empty?
  end

  def push(val)
    @store .push(max: new_max(val), min: new_min(val), value: val)
  end

  def new_max(val)
    empty? ? val : [max, val].max
  end

  def new_min(val)
    empty? ? val : [min, val].min
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

end
