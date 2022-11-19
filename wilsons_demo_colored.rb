require 'colored_grid'
require 'wilsons'

grid = ColoredGrid.new(20, 20)
Wilsons.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'output/wilsons_colour.png'
grid.to_png.save(filename)
puts "save to #{filename}"
