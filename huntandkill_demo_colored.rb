require 'colored_grid'
require 'hunt_and_kill'

grid = ColoredGrid.new(20, 20)
HuntAndKill.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'output/huntandkill_colour.png'
grid.to_png.save(filename)
puts "save to #{filename}"
