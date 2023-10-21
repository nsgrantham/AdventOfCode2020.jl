module Day2

using AdventOfCode2020


function solve(input=pkgdir(AdventOfCode2020, "data", "Day2.txt"))
    p1 = 0
    p2 = 0

    for line in eachline(input)
        x = match(r"(\d+)-(\d+) (.): (\S*)", line)
        a = parse(Int, x[1])
        b = parse(Int, x[2])
        c = only(x[3])
        p1 += convert(Int, a <= count(==(c), x[4]) <= b)
        p2 += convert(Int, xor(x[4][a] == c, x[4][b] == c))
    end

    p1, p2
end

end
