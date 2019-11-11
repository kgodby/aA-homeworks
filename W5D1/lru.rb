class LRUCache

    def initialize(size)
        @max = size
        @underlying_array = []
    end

    def count
        underlying_array.length
    end
        
    def add(ele)
        if underlying_array.include?(ele)
            ele_idx = underlying_array.index(ele)
            first =  underlying_array.delete_at(ele_idx)
            underlying_array.unshift(first)
        elsif self.count >= @max
            underlying_array.pop
            underlying_array.unshift(ele)
        else
            underlying_array.unshift(ele)
        end
    end

    def show
        p underlying_array

    end





    private
    attr_accessor :underlying_array
end