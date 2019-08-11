x=3
y=9
if x > y
    println("$x is greater than $y")
elseif y > x
    println("$y is greater than $x")
else
    println("$x and $y are equal")
end

# C-style syntax
(x > y) ? x : y

x=9
y=3
z=-1
if x > y && z>0
    println("$x is greater than $y and z is greater 0")
elseif x > y || z<0
    println("$y is greater than $x or z is greater 0")
else
    println("$x and $y are equal")
end
