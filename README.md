# AdventOfCode2020.jl

[![Build Status](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml?query=branch%3Amain)

My solutions to [Advent of Code 2020](https://adventofcode.com/2020) using Julia.

| Puzzle                                                              | Input                         | Solver                     | Topics               |
|:--------------------------------------------------------------------|:------------------------------|:---------------------------|:---------------------|
| [Day 1: Report Repair](https://adventofcode.com/2020/day/1)         | [Day1.txt](./data/Day1.txt)   | [Day1.jl](./src/Day1.jl)   | Sets, Combinations   |
| [Day 2: Password Philosophy](https://adventofcode.com/2020/day/2)   | [Day2.txt](./data/Day2.txt)   | [Day2.jl](./src/Day2.jl)   | Regex, Boolean Logic |

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
