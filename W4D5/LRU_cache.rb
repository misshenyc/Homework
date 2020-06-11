  class LRUCache

    attr_accessor :cache, :size

    def initialize(n)
        @cache = []
        @size = n
    end

    def count
      # returns number of elements currently in cache
      cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
    #   cache.shift if count >= size
    #   cache.delete(el) if cache.include?(el)
    #   cache << el
      
      if !cache.include?(el) && count < size 
        cache << el
      elsif !cache.include?(el) && count >= size 
        cache << el
        cache.shift
      else 
        cache.delete(el)
        cache << el
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      puts cache
    end

    private
    # helper methods go here!

    #find ele in an arr, move ele to the end of the same arr

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show