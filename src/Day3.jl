module Day3

using AdventOfCode2020

function count_trees(grid, slope)
    n = size(grid, 1)
    s = 0
    i = 1
    j = 1
    
    while true
        i, j = slope(i, j)
        i > n && break
        if grid[i, j] == '#'
            s += 1
        end
    end 
    s
end

function solve(input=pkgdir(AdventOfCode2020, "data", "Day3.txt"))
    grid = permutedims(hcat(collect.(readlines(input))...))
    m = size(grid, 2)

    slopes = [
        (i, j) -> (i + 1, mod1(j + 1, m)),
        (i, j) -> (i + 1, mod1(j + 3, m)),
        (i, j) -> (i + 1, mod1(j + 5, m)),
        (i, j) -> (i + 1, mod1(j + 7, m)),
        (i, j) -> (i + 2, mod1(j + 1, m))
    ]
    counts = [count_trees(grid, slope) for slope in slopes] 
    
    p1 = counts[2]
    p2 = prod(counts)
    p1, p2
end

end
