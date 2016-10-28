class LRUCache
  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.count
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    elsif count >= @size
      @cache.shift
    end
    @cache << el
  end

  def show
    puts  @cache.to_s
  end
end



p  johnny_cache = LRUCache.new(4)

p  johnny_cache.add("I walk the line")
p  johnny_cache.add(5)

p  johnny_cache.count # => returns 2

p  johnny_cache.add([1,2,3])
p  johnny_cache.add(5)
p  johnny_cache.add(-5)
p  johnny_cache.add({a: 1, b: 2, c: 3})
p  johnny_cache.add([1,2,3,4])
p  johnny_cache.add("I walk the line")
p  johnny_cache.add(:ring_of_fire)
p  johnny_cache.add("I walk the line")
p  johnny_cache.add({a: 1, b: 2, c: 3})


p  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

# class LRUCache
#
#   def initialize(size)
#       @size = size
#       @cache = []
#   end
#
#   def count
#     @cash.counts
#     # returns number of elements currently in cache
#   end
#
#   def add(el)
#     return if el.nil?
#     if @cash.include?(el)
#       @cash.delete(el)
#     elsif count >= @size
#       @cache.shift
#     end
#       @cash.include?(el)
#   end
#
#       # adds element to cache according to LRU principle
#
#
#     def show
#       puts @cash
#     end
#
#   #  private
# end
#     # helper methods go here!
#     johnny_cache = LRUCache.new(4)
#
#   P  johnny_cache.add("I walk the line")
#     P     johnny_cache.add(5)
#
#     P     johnny_cache.count # => returns 2
#
#     P     johnny_cache.add([1,2,3])
#     P     johnny_cache.add(5)
#     P     johnny_cache.add(-5)
#       P   johnny_cache.add({a: 1, b: 2, c: 3})
#     P     johnny_cache.add([1,2,3,4])
#     P     johnny_cache.add("I walk the line")
#       P   johnny_cache.add(:ring_of_fire)
#       P   johnny_cache.add("I walk the line")
#     P     johnny_cache.add({a: 1, b: 2, c: 3})
