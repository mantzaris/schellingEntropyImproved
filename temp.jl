#define the grid
#schelling used originally 13x13 grid
GRID_SIZE = 13
CELL_COUNT = 13*13

yellow_count = Int(round(CELL_COUNT * 5/12))
blue_count = Int(round(CELL_COUNT * 5/12))    
empty_grid = zeros(GRID_SIZE,GRID_SIZE)

empty_grid[1:yellow_count] .= 1
empty_grid[yellow_count+1:yellow_count+blue_count] .= -1

using Random

start_grid = shuffle(empty_grid)


using Plots
heatmap(start_grid)
