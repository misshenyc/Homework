require "Set"

class GraphNode
    attr_accessor :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]



def bfs(starting_node, target_value)
    visited = Set.new
    to_visit = [starting_node]
    until to_visit.empty?
        ele = to_visit.shift
        next if visited.include?(ele.value)
        return ele if ele.value == target_value
        visited.add(ele.value)
        ele.neighbors.each {|neighbor| to_visit << neighbor}
    end
    nil
end

p bfs(a, "b")
p bfs(a, "f")





