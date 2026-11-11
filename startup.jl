# jda/startup.jl

macro w_str(s)  Expr(:vect, String.(split(s))...) end
macro wa_str(s) Expr(:vect, QuoteNode.(Symbol.(split(s)))...) end

const JDA_PROGRESS = joinpath(@__DIR__, ".progress")
const JDA_CHAPTERS = [
    "Introduction",
    "Getting started with Julia",
    "Julia's support for scaling projects",
    "Working with collections in Julia",
    "Advanced topics on handling collections",
    "Working with strings",
    "Handling time series data and missing values",
    "First steps with data frames",
    "Getting data from a data frame",
    "Creating data frame objects",
    "Converting and grouping data frames",
    "Mutating and transforming data frames",
    "Advanced transformations of data frames",
    "Creating web services for sharing data analysis results",
]

function current_chapter()
    isfile(JDA_PROGRESS) || return 1
    n = tryparse(Int, strip(read(JDA_PROGRESS, String)))
    n === nothing ? 1 : clamp(n, 1, length(JDA_CHAPTERS))
end

"""
    chapter!(n::Integer)

Set the current chapter to `n` and save it to the `.progress` file.

Throw an error if `n` is not between 1 and the number of chapters.

# Examples
```julia
julia> chapter!(6)
Now on chapter 6: Working with strings
```
"""
function chapter!(n::Integer)
    1 <= n <= length(JDA_CHAPTERS) || error("chapter must be 1–$(length(JDA_CHAPTERS))")
    write(JDA_PROGRESS, string(n))
    println("Now on chapter $n: ", JDA_CHAPTERS[n])
end

atreplinit() do repl
    n, total = current_chapter(), length(JDA_CHAPTERS)

    printstyled("  ●"; color=:red)
    printstyled("●"; color=:green)
    printstyled("●\n"; color=:magenta)
    printstyled("  Julia for Data Analysis\n"; bold=true)
    printstyled("  ", "─"^28, "\n"; color=:light_black)
    printstyled("  ", "█"^(n - 1); color=:green)
    printstyled("░"^(total - n + 1); color=:light_black)
    println("  chapter $n of $total")
    printstyled("  ", JDA_CHAPTERS[n], "\n\n"; color=:light_black)
end
