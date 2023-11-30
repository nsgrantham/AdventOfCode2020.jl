module Day9

using AdventOfCode2020


function get_first_invalid_number(x::Vector{Int}, n::Int)
    for i in n+1:length(x)
        curr = x[i]
        prev = x[i-n:i-1]
        length(intersect(prev, curr .- prev)) > 1 || return curr
    end
    missing
end

function get_first_contiguous_sequence_summing_to(x::Vector{Int}, y::Int)
    for i in eachindex(x)
        z = x[i:end]
        s = 0
        for j in eachindex(z)
            s += z[j]
            s == y && j > 1 && return z[1:j]
            s > y && break
        end
    end
    missing
end

function solve(
    input=pkgdir(AdventOfCode2020, "data", "Day9.txt");
    n::Int=25
)
    x = parse.(Int, readlines(input))
    p1 = get_first_invalid_number(x, n)
    p2 = sum(extrema(get_first_contiguous_sequence_summing_to(x, p1)))
    p1, p2
end

end
