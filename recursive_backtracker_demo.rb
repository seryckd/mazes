require 'grid'
require 'recursive_backtracker'

grid = Grid.new(20, 20)
RecursiveBacktracker.on(grid)

filename = 'output/recursive_backtracker.png'
grid.to_png.save(filename)
puts "save to #{filename}"
