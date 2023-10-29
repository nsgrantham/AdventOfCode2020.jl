module Day5

using AdventOfCode2020


function find_seat(letters::String)
    rows = 0:127
    for letter in letters[1:7]
        front, back = Iterators.partition(rows, div(length(rows), 2))
        rows = letter == 'F' ? front : back
    end

    cols = 0:7
    for letter in letters[8:10]
        left, right = Iterators.partition(cols, div(length(cols), 2))
        cols = letter == 'L' ? left : right
    end

    only(rows) * 8 + only(cols)
end

function solve(input=pkgdir(AdventOfCode2020, "data", "Day5.txt"))
    seats = find_seat.(readlines(input))
    p1 = maximum(seats)
    
    filled_seats = filter(s -> s-1 in seats && s+1 in seats, seats)
    p2 = only(setdiff(range(extrema(filled_seats)...), seats))

    p1, p2
end

end
