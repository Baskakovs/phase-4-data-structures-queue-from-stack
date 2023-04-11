class Stack

  def initialize
    @stack = []
  end

  def push(value)
    @stack.push(value)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def empty?
    @stack.empty?
  end

  def show
    @stack
  end

  def remove_first
    @stack.shift
  end

end
