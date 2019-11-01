class Stack
    
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]    
    end

end

# s = Stack.new

# # (1..10).each { |i| s.push(i)}
# # p s.peek
# # p s


class Queue

    def initialize
        @queue = []
    end

    def dequeue
        @queue.pop
    end

    def enqueue(el)
        @queue.unshift(el)
    end

    def peek
        @queue[-1]
    end

end


class Map
    attr_accessor :map
    def initialize
        @map = []
    end



    def set(key, value)
       
        @map.each do |pair|  
            if pair[0] == key
                pair[1] = value
            else
                @map << [key, value]
            end
        end
    
    end

    def get(key)
        @map.each { |pair| return pair if pair[0] == key}
        nil
    end

    def delete(key)
        @map.each { |pair| @map.delete(pair) if pair[0] == key}
    end

    def show
        @map
    end

end

 m = Map.new
# p m
  alph = ("a".."z").to_a    #not working

 (0...26).each { |idx| m.set(idx, alph[idx])}
# p m
 p m.map