module Day6

using AdventOfCode2020

function solve(input=pkgdir(AdventOfCode2020, "data", "Day6.txt"))
    groups = split.(split(strip(read(input, String)), "\n\n"), "\n")
    p1 = sum(length.(union(group...) for group in groups))
    p2 = sum(length.(intersect(group...) for group in groups))
    p1, p2
end

end
