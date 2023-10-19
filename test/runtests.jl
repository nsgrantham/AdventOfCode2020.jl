using AdventOfCode2020
using Test


@testset "Day 1" begin
    example = ""

    @test AdventOfCode2020.Day1.solve(IOBuffer(example)) == (0, 1)
end
