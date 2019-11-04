class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def inspect
       self.neighbors.map(&:val)
    end 

    def bfs (starting_node, target_value, visited = Set.new())
        return starting_node if starting_node.val == target_value
        return nil if set.include?(starting_node.val)
        
        visited.add(starting_node.val)
        starting_node.neighors.each do |neighbor|
            
            

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

p a.inspect