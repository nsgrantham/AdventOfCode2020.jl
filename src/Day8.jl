module Day8

using AdventOfCode2020


struct Instruction
    op::String
    arg::Int
end

function Base.parse(::Type{Instruction}, line)
    op, arg = split(line, " ")
    Instruction(op, parse(Int, arg))
end

Base.copy(inst::Instruction) = Instruction(inst.op, inst.arg)
Base.isequal(a::Instruction, b::Instruction) = (a.op == b.op) && (a.arg == b.arg)

function run_boot_code(insts::Vector{Instruction})
    i = 1
    acc = 0
    visited = Int[]
    n = length(insts)
    
    while true
        i == n + 1 && break  # success
        
        if (i in visited) || (i < 1) || (i > n)
            return (acc, false)
        end
        
        inst = insts[i]
        push!(visited, i)
    
        if inst.op == "nop"
            i += 1
        elseif inst.op == "acc"
            acc += inst.arg
            i += 1
        elseif inst.op == "jmp"
            i += inst.arg
        end
    end

    acc, true
end

function fix_boot_code(insts::Vector{Instruction})
    nops = findall(inst -> inst.op == "nop" && inst.arg != 0, insts)
    jmps = findall(inst -> inst.op == "jmp", insts)
    changes = [
        [(nop, "jmp") for nop in nops]...,
        [(jmp, "nop") for jmp in jmps]...
    ]
    
    acc = 0
    for (i, changed_op) in changes
        changed_insts = deepcopy(insts)
        changed_insts[i] = Instruction(changed_op, insts[i].arg)
        acc, has_completed = run_boot_code(changed_insts)
        has_completed && break
    end
    acc
end

function solve(input=pkgdir(AdventOfCode2020, "data", "Day8.txt"))
    insts = parse.(Instruction, readlines(input))
    p1, _ = run_boot_code(insts)
    p2 = fix_boot_code(insts)
    p1, p2
end

end
