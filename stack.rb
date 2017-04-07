class Stack

  def initialize
    @store = []
  end

  def sort_stack
    @store.sort
  end

  def pop
    @store.pop
  end

  def push(el)
    @store << el
  end

  def peek
    @store
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

  def max
    sort_stack.last
  end

end
