
require "byebug"

fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


def sluggish_octopus(fishes)
    (0...fishes.length).each do |i1|
        longest_fish = true
        (i1+1...fishes.length).each do |i2|
            longest_fish = false if fishes[i2].length > fishes[i1].length
        end
        return fishes[i1] if longest_fish
    end
end

# p sluggish_octopus(fish)

def dominant_octopus(fishes)
    quick_sort_fish(fishes).last
end

def quick_sort_fish(fishes)
    return [] if fishes.empty? 
    pivot = fishes[0]

    left = fishes[1..-1].select{|ele| ele.length < pivot.length }
    right = fishes[1..-1].select{|ele| ele.length >= pivot.length}

    quick_sort_fish(left) + [pivot] + quick_sort_fish(right)
end

p quick_sort_fish(fish)
p dominant_octopus(fish)

def clever_octopus(fishes)
    longest_fish = fishes.first
    fishes.each do |fish|
        longest_fish = fish if fish.length > longest_fish.length
    end
    longest_fish
end

# p clever_octopus(fish)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(tile, arr)
    arr.each_with_index do |ele, i|
        return i if ele == tile
    end
end

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)


tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}


def constant_dance(tile,arr)
    tiles_hash[tile]
end

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

