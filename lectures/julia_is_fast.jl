import Pkg
Pkg.add("BenchmarkTools")
using BenchmarkTools

function get_sum(M, rounds)
    for i=1:rounds
    sum(M)
    end
end

M = rand(10^7)
@which sum(M)
rounds = 999

@time get_sum(M, rounds)

j_bench = @benchmark sum($a)
display(j_bench)


#=
clear
set verbose off
/* Compare the speed of the sum() function in gretl and julia. */

# Run stuff on Gretl
#===================
function void get_sum(const matrix M, const int rounds)
    loop i=1..rounds -q
        scalar s = sum(M)
    endloop
end function
matrix M = muniform(10^7,1)
scalar rounds = 999
set stopwatch
get_sum(M, rounds)
printf "This took overall %g sec. for gretl.\n\n", $stopwatch
=#
