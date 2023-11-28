# AdventOfCode2020.jl

[![Build Status](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml?query=branch%3Amain)

My solutions to [Advent of Code 2020](https://adventofcode.com/2020) using Julia.

| Puzzle                                                              | Input                         | Solver                     | Topics                          |
|:--------------------------------------------------------------------|:------------------------------|:---------------------------|:--------------------------------|
| [Day 1: Report Repair](https://adventofcode.com/2020/day/1)         | [Day1.txt](./data/Day1.txt)   | [Day1.jl](./src/Day1.jl)   | Sets, Combinations              |
| [Day 2: Password Philosophy](https://adventofcode.com/2020/day/2)   | [Day2.txt](./data/Day2.txt)   | [Day2.jl](./src/Day2.jl)   | Regex, Boolean Logic            |
| [Day 3: Toboggan Trajectory](https://adventofcode.com/2020/day/3)   | [Day3.txt](./data/Day3.txt)   | [Day3.jl](./src/Day3.jl)   | Modulo Arithmetic               |
| [Day 4: Passport Processing](https://adventofcode.com/2020/day/4)   | [Day4.txt](./data/Day4.txt)   | [Day4.jl](./src/Day4.jl)   | String Parsing                  |
| [Day 5: Binary Boarding](https://adventofcode.com/2020/day/5)       | [Day5.txt](./data/Day5.txt)   | [Day5.jl](./src/Day5.jl)   | Binary Space Partitioning, Sets |
| [Day 6: Custom Customs](https://adventofcode.com/2020/day/6)        | [Day6.txt](./data/Day6.txt)   | [Day6.jl](./src/Day6.jl)   | Sets                            |
| [Day 7: Handy Haversacks](https://adventofcode.com/2020/day/7)      | [Day7.txt](./data/Day7.txt)   | [Day7.jl](./src/Day7.jl)   | Recursion                       |
| [Day 8: Handheld Halting](https://adventofcode.com/2020/day/8)      | [Day8.txt](./data/Day8.txt)   | [Day8.jl](./src/Day8.jl)   | Assembly Language               |

## Install

```julia
using Pkg

Pkg.add(url = "https://github.com/nsgrantham/AdventOfCode2020.jl")
```

## Test

```julia
using Pkg

Pkg.test("AdventOfCode2020")
```

## Solve

```julia
using AdventOfCode2020

AdventOfCode2020.Day1.solve()
```
