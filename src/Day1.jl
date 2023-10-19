module Day1

using AdventOfCode2020
using Combinatorics


function get_triplet_summing_to(x, n)
    for triplet in combinations(x, 3)
        sum(triplet) == n && return triplet
    end
end


function solve(input=pkgdir(AdventOfCode2020, "data", "Day1.txt"))
    x = parse.(Int, readlines(input))
    y = 2020 .- x
    
    p1 = prod(intersect(Set(x), Set(y)))
    p2 = prod(get_triplet_summing_to(x, 2020))

    p1, p2
end

end
