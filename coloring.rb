require 'colored_grid'
require 'binary_tree'
require 'sidewinder'

grid = ColoredGrid.new(25, 25)
#BinaryTree.on(grid)
Sidewinder.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances

filename = 'output/colorized.png'
grid.to_png.save(filename)

puts "saved to #{filename}"
