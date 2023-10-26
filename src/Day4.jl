module Day4

using AdventOfCode2020


struct Passport
    byr::String
    iyr::String
    eyr::String
    hgt::String
    hcl::String
    ecl::String
    pid::String
    cid::String
end

function Base.parse(::Type{Passport}, string)
    fields = Dict(key => "" for key in ["byr", "iyr", "eyr", "hgt", "hcl", "ecl", "pid", "cid"])
    merge!(fields, Dict(Tuple.(split.(split(strip(string), r"(\n| )"), ":"))))
    Passport(
        fields["byr"],
        fields["iyr"],
        fields["eyr"],
        fields["hgt"],
        fields["hcl"],
        fields["ecl"],
        fields["pid"],
        fields["cid"]
    )
end

function has_required_fields(passport::Passport)
    passport.byr != "" &&
    passport.iyr != "" &&
    passport.eyr != "" &&
    passport.hgt != "" &&
    passport.hcl != "" &&
    passport.ecl != "" &&
    passport.pid != ""
end

function is_valid(passport::Passport)
    has_required_fields(passport) || return false

    has_valid_byr = 1920 <= parse(Int, passport.byr) <= 2002
    has_valid_iyr = 2010 <= parse(Int, passport.iyr) <= 2020
    has_valid_eyr = 2020 <= parse(Int, passport.eyr) <= 2030

    height = parse(Int, filter.(isdigit, passport.hgt))
    has_valid_hgt = (
        (endswith(passport.hgt, "cm") && 150 <= height <= 193) ||
        (endswith(passport.hgt, "in") &&  59 <= height <=  76)
    )
    
    has_valid_hcl = (
        length(passport.hcl) == 7 &&
        occursin(r"^#[a-f0-9]*", passport.hcl)
    )
    
    has_valid_ecl = passport.ecl in ["amb", "blu", "brn", "gry", "grn", "hzl", "oth"]

    has_valid_pid = (
        length(passport.pid) == 9 && 
        all(isdigit, passport.pid)
    )
    
    has_valid_byr &&
      has_valid_iyr &&
      has_valid_eyr &&
      has_valid_hgt &&
      has_valid_hcl &&
      has_valid_ecl &&
      has_valid_pid
end

function solve(input=pkgdir(AdventOfCode2020, "data", "Day4.txt"))
    passports = parse.(Passport, split(read(input, String), "\n\n"))
    p1 = count(has_required_fields, passports)
    p2 = count(is_valid, passports)
    p1, p2
end

end
