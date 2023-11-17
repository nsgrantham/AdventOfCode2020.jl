module Day7

using AdventOfCode2020


const Bags = Dict{String, Dict{String, Int}}

function Base.parse(::Type{Bags}, rules)
    bags = Bags()
    for rule in rules
        outer, inners = split(rule, " contain ")
        outer_color = replace(outer, " bags" => "")
        inners = split(replace(inners, "." => ""), ", ")
         
        bag = Dict{String, Int}()
        for inner in inners
            inner == "no other bags" && continue
            n, inner_color = match(r"(\d+) (\S*\s\S*) bag(s|)", inner)
            bag[inner_color] = parse(Int, n)
        end
       bags[outer_color] = bag
    end
    bags
end

function contains_shiny_gold_bag(bags::Bags, color::String)
    inner_colors = keys(bags[color])
    "shiny gold" in inner_colors && return true
    for inner_color in inner_colors
        contains_shiny_gold_bag(bags, inner_color) && return true 
    end
    false
end

function count_inner_bags(bags::Bags, color::String)
    s = 0
    inner_bags = bags[color]
    for (inner_color, n) in inner_bags
        s += n + n * count_inner_bags(bags, inner_color)
    end
    s
end

function solve(input=pkgdir(AdventOfCode2020, "data", "Day7.txt"))
    bags = parse(Bags, readlines(input))
    
    p1 = count(color -> contains_shiny_gold_bag(bags, color), keys(bags))
    p2 = count_inner_bags(bags, "shiny gold")

    p1, p2
end

end
