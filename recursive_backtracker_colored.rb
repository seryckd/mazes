require 'colored_grid'
require 'recursive_backtracker'

grid = ColoredGrid.new(20, 20)
RecursiveBacktracker.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'output/recursive_backtracker_colored.png'
grid.to_png.save(filename)
puts "save to #{filename}"
