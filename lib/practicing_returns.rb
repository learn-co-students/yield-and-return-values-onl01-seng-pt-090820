require 'pry'

def hello(array)
  item_index = 0
  collection = []
  while item_index < array.length
    collection << yield(array[item_index])
    item_index += 1
  end
  collection
  puts collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
