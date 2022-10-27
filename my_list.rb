# Create a class MyList that has an instance variable @list.

require_relative 'my_enumerable'

class MyList
  def initialize(*list)
    @list = list
  end

  # In MyList implement a method #each that yields successive members

  # of @list and uses the MyEnumerable module.

  include MyEnumerable

  def each
    @list.each { |value| yield value if block_given? }
  end
end
