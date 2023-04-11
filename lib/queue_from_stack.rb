require "byebug"
class MyQueue
    def initialize
      @s1 = Stack.new
      @s2 = Stack.new
    end
  
    def add(value)
        if @s1.empty? && @s2.empty?
            @s1.push(value)
            @s1
        elsif !@s1.empty? && @s2.empty?
            @s2.push(value)
            while !@s1.empty?
                @s2.push(@s1.peek)
                @s1.pop
            end
            @s2
        elsif !@s2.empty? && @s2.empty?
            @s1.push(value)
            while !@s2.empty? 
                @s1.push(@s2.peek)
                @s2.pop
            end
            @s1
        end
    end
  
    def peek
      @s1.peek
    end
    
    def remove 
      @s1.remove_first unless @s1.peek == 2
    end

  end