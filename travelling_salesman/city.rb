class City
  attr_accessor :visited
  attr_accessor :neighbors
  attr_accessor :name

  def initialize(name, visited = false)
    @visited = visited
    @name = name
    @neighbors = []
    # @neighbors is an array of hashes, where each hash contains a City node, ['city'], as well as
    # the distance from the current City, ['distance'].
  end
end
