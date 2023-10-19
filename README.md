# AdventOfCode2020.jl

[![Build Status](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/nsgrantham/AdventOfCode2020.jl/actions/workflows/CI.yml?query=branch%3Amain)

My solutions to [Advent of Code 2020](https://adventofcode.com/2020) using Julia.

| Puzzle                                                              | Input                         | Solver                     |
|:--------------------------------------------------------------------|:------------------------------|:---------------------------|
| [Day 1: Report Repair](https://adventofcode.com/2020/day/1)         | [Day1.txt](./data/Day1.txt)   | [Day1.jl](./src/Day1.jl)   |


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
