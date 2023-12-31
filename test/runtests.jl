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

@testset "Day 2" begin
    example = """
    1-3 a: abcde
    1-3 b: cdefg
    2-9 c: ccccccccc
    """

    @test AdventOfCode2020.Day2.solve(IOBuffer(example)) == (2, 1)
end

@testset "Day 3" begin
    example = """
    ..##.......
    #...#...#..
    .#....#..#.
    ..#.#...#.#
    .#...##..#.
    ..#.##.....
    .#.#.#....#
    .#........#
    #.##...#...
    #...##....#
    .#..#...#.#
    """
    
    @test AdventOfCode2020.Day3.solve(IOBuffer(example)) == (7, 336)
end

@testset "Day 4" begin
    example1 = """
    ecl:gry pid:860033327 eyr:2020 hcl:#fffffd
    byr:1937 iyr:2017 cid:147 hgt:183cm
    
    iyr:2013 ecl:amb cid:350 eyr:2023 pid:028048884
    hcl:#cfa07d byr:1929
    
    hcl:#ae17e1 iyr:2013
    eyr:2024
    ecl:brn pid:760753108 byr:1931
    hgt:179cm
    
    hcl:#cfa07d eyr:2025 pid:166559648
    iyr:2011 ecl:brn hgt:59in
    """
    
    example2 = """
    eyr:1972 cid:100
    hcl:#18171d ecl:amb hgt:170 pid:186cm iyr:2018 byr:1926
    
    iyr:2019
    hcl:#602927 eyr:1967 hgt:170cm
    ecl:grn pid:012533040 byr:1946
    
    hcl:dab227 iyr:2012
    ecl:brn hgt:182cm pid:021572410 eyr:2020 byr:1992 cid:277
    
    hgt:59cm ecl:zzz
    eyr:2038 hcl:74454a iyr:2023
    pid:3556412378 byr:2007
    """

    example3 = """
    pid:087499704 hgt:74in ecl:grn iyr:2012 eyr:2030 byr:1980
    hcl:#623a2f
    
    eyr:2029 ecl:blu cid:129 byr:1989
    iyr:2014 pid:896056539 hcl:#a97842 hgt:165cm
    
    hcl:#888785
    hgt:164cm byr:2001 iyr:2015 cid:88
    pid:545766238 ecl:hzl
    eyr:2022
    
    iyr:2010 hgt:158cm hcl:#b6652a ecl:blu byr:1944 eyr:2021 pid:093154719
    """
    
    invalid_passports = parse.(
        AdventOfCode2020.Day4.Passport,
        split(read(IOBuffer(example2), String), "\n\n")
    )
    
    valid_passports = parse.(
        AdventOfCode2020.Day4.Passport,
        split(read(IOBuffer(example3), String), "\n\n")
    )

    @test AdventOfCode2020.Day4.solve(IOBuffer(example1)) == (2, 2)
    @test !any(AdventOfCode2020.Day4.is_valid, invalid_passports)
    @test all(AdventOfCode2020.Day4.is_valid, valid_passports)
end

@testset "Day 5" begin
    @test AdventOfCode2020.Day5.find_seat("FBFBBFFRLR") == 357
    @test AdventOfCode2020.Day5.find_seat("BFFFBBFRRR") == 567
    @test AdventOfCode2020.Day5.find_seat("FFFBBBFRRR") == 119
    @test AdventOfCode2020.Day5.find_seat("BBFFBBFRLL") == 820
end

@testset "Day 6" begin
    example = """
    abc
    
    a
    b
    c
    
    ab
    ac
    
    a
    a
    a
    a
    
    b
    """

    @test AdventOfCode2020.Day6.solve(IOBuffer(example)) == (11, 6)
end

@testset "Day 7" begin
    example = """
    light red bags contain 1 bright white bag, 2 muted yellow bags.
    dark orange bags contain 3 bright white bags, 4 muted yellow bags.
    bright white bags contain 1 shiny gold bag.
    muted yellow bags contain 2 shiny gold bags, 9 faded blue bags.
    shiny gold bags contain 1 dark olive bag, 2 vibrant plum bags.
    dark olive bags contain 3 faded blue bags, 4 dotted black bags.
    vibrant plum bags contain 5 faded blue bags, 6 dotted black bags.
    faded blue bags contain no other bags.
    dotted black bags contain no other bags.
    """

    @test AdventOfCode2020.Day7.solve(IOBuffer(example)) == (4, 32)  
end

@testset "Day 8" begin
    example = """
    nop +0
    acc +1
    jmp +4
    acc +3
    jmp -3
    acc -99
    acc +1
    jmp -4
    acc +6
    """

    @test AdventOfCode2020.Day8.solve(IOBuffer(example)) == (5, 8)
end


@testset "Day 9" begin
    example = """
    35
    20
    15
    25
    47
    40
    62
    55
    65
    95
    102
    117
    150
    182
    127
    219
    299
    277
    309
    576
    """

    @test AdventOfCode2020.Day9.solve(IOBuffer(example), n=5) == (127, 62)
end
