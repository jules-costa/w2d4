require_relative "stackqueue"

class MinMaxStack ##confused about new_max, new_min

  attr_accessor :min, :max

  def initialize
    @store = Stack.new
    # @max = nil
    # @min = nil
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
    @store << { max: new_max(val), min: new_min(val), value: val }
  end

  def new_max(val)
    empty? ? val : [max, val].max
  end

  def new_min(val)
    empty? ? val : [min, val].min
  end


  # def update_min(el)
  #   @min = el if min.nil?
  #   @min = el if el < @min
  # end
  #
  # def update_max(el)
  #   @max = el if @max.nil?
  #   @max = el if el > max
  # end

  # def dequeue
  #   @store.dequeue
  # end
  #
  # def enqueue(el)
  #   @store.enqueue(el)
  #   update_max(el)
  #   update_min(el)
  # end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

end
