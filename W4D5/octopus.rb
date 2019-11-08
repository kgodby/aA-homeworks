def sluggish_oct(fish)

    fish.each_with_index do |fish,i|
        current_fish = fish
        if fish.none? {|fish| fish.length > current_fish.length }
            big_fish = current_fish
        end
    end
    big_fish
end 
          

def dominant_octopus(fish)
    return fish if fish.length <= 1

    middle_index = fish.length / 2
    middle_fish = fish[middle_index]
    small_fishes = fish.select { |fish| fish.length < middle_fish.length }
    big_fishes = fish.select { |fish| fish.length > middle_fish.length }
    
    sorted_fish = dominant_octopus(small_fishes) + [middle_fish] + dominant_octopus(big_fishes)
    return sorted_fish[-1]

end 

def clever_octopus(fish)
    big_fish = nil

    fish.each do |fish|
        if big_fish.nil? || big_fish.length < fish.length
            big_fish = big_fish
        end
    end
    big_fish
end

def slow_dance(dir, dir_tiles)

    dir_tiles.each_with_index {|tile, i| return i if dir == tile}

end

dir_hash = {up: 0, up_right: 1, right: 2, down_right: 3, down: 4, down_left: 5, left: 6, up_left: 7}

def constant_dance(dir, dir_hash)
    dir_hash[dir.to_sym]
end