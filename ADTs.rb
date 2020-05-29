class Stack

    def initialize
        @stack = []
    end

    def push(*el)
        @stack.push(*el)
    end

    def pop
        @stack[0...-1]
    end

    def peek
        @stack[-1]
    end

end

animals = Stack.new
p animals.push("panda","bear", "cow", "sheep")
p animals.pop
p animals.peek

class Queue

    def initialize
        @queue = []
    end

    def enqueue(*el)
        @queue.push(*el)
    end

    def dequeue(el)
        @queue.shift
        @queue
    end

    def peek
        @queue[0]
    end

end

music = Queue.new
p music.enqueue("camila cabello", "ariana grande", "bruno mars")
p music.dequeue("camila cabello")
p music.peek


class Map
    def initialize(n)
        @my_map = []
    end

    def set(key,value)
        keys = []
        @my_map.each{|pair| keys << pair.first}
        if keys.include?(key)
            i = keys.index(key)
            @my_map[i][-1] = value
        else
            @my_map << [key,value] 
        end
    end

    def get(key)
        @my_map.select{|k,v| k == key}
    end

    def delete(key)
        @my_map.reject{|k,v| k == key}
    end

    def show
        @my_map.flatten
    end

end

color = Map.new(3)
p color.set("sky", "blue")
p color.set("rose", "red")
p color.set("grass", "green")
p color.set("sky", "grey")
p color.get("sky")
p color.delete("rose")
p color.show

