require_relative 'my_enum'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&elements)
    @list.each do |element|
      elements.call(element)
    end
  end
end

list= MyList.new(1,2,3,4)

puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 4 })
puts(list.any? { |e| e == 5 })
puts(list.any? { |e| e == 10 })
