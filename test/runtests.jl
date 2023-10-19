using AdventOfCode2020
using Test


@testset "Day 1" begin
    example = """
    1721
    979
    366
    299
    675
    1456
    """

    @test AdventOfCode2020.Day1.solve(IOBuffer(example)) == (514579, 241861950)
end
