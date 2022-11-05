require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances

# distance counts from the start point to all the others 
# grid.distances = distances

# the counts from the start point to the furthest distance
d2 = distances.path_to(grid[grid.rows - 3, 0])
grid.distances = d2

puts grid

