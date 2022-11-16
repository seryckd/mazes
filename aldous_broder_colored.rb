require 'colored_grid'
require 'aldous_broder'

grid = ColoredGrid.new(40, 80)
AldousBroder.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'output/aldous_broder.png'
grid.to_png.save(filename)
puts "save to #{filename}"

