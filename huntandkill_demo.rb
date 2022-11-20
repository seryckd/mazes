require 'grid'
require 'hunt_and_kill'

grid = Grid.new(20, 20)
HuntAndKill.on(grid)

filename = 'output/huntandkill.png'
grid.to_png.save(filename)
puts "save to #{filename}"
