require_relative './city.rb'

def nearest_possible_neighbor(_graph_of_cities, current_city)
  while current_city.visited == false
    neighbor_cities = current_city.neighbors
    next_city = neighbor_cities[0]

    for current_neighbor in neighbor_cities
      next_city = current_neighbor if current_neighbor['distance'] < next_city['distance']
    end

    current_city['city'].visited = true
    current_city = next_city
  end
end
