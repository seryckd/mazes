require 'distance_grid'
require 'binary_tree'

# find the longest path on the grid

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]

# calculate distances from start point to all the others
distances = start.distances
new_start, distance = distances.max
grid.distances = distances
puts grid

# calculate distances from the max point to all the others
new_distances = new_start.distances
goal, distance = new_distances.max

grid.distances = new_distances.path_to(goal)
puts grid
