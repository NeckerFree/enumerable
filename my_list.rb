require_relative 'my_enum'

class MyList
  include MyEnumerable

  def initialize(list)
    @list = list
  end

  def each(&elements)
    @list.each do |element|
      elements.call(element)
    end
  end
end
