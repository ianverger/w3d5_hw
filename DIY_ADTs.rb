class Stack 
    attr_reader :@stack

    def initialize
        @stack = Array.new
    end
  
    def push(el)
        @stack << el
    end
  
    def pop
       @stack.pop
    end
  
    def peek
        return @stack.last
    end
end 

class Queue
    attr_reader :@queue

    def initialize
        @queue = Array.new
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end
end

class Map
    attr_reader :map

    def initialize
        @map = Array.new
    end

    def set(key, val)
        pair_idx = map.index { |pair| pair[0] == key }
        if pair_idx
            map[pair_idx][1] = val
        else
            map.push([key, val])
        end
        val
    end

    def get(key)
        map.each { |pair| return pair[1] if pair[0] == key }
        nil
    end

    def delete(key)
        val = get(key)
        map.reject! { |pair| pair[0] == key }
        val
    end

    def show
    end
end