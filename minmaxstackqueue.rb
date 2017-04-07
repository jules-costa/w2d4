require_relative "minmaxstack"

class MinMaxStackQueue

  def initialize
    @in_stack = MinMaxStack.new
    @out_stack = MinMaxStack.new
  end

  def enqueue(el)
    @in_stack << el
  end

  def dequeue
    if @out_stack.empty?
      @out_stack << @in_stack.pop until @in_stack.empty?
    else
      @out_stack.pop
    end
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def min
    mins = []
    mins << @in_stack.min unless @in_stack.empty?
    mins << @out_stack.min unless @out_stack.empty?
    mins.min
  end

  def max
    maxes = []
    maxes << @in_stack.max unless @in_stack.empty?
    maxes << @out_stack.max unless @out_stack.empty?
    maxes.max
  end

  def size 
    @in_stack.size + @out_stack.size
  end

end
