function foo(name)
    println("Hi $name")
end

function f(x)
    x^2
end

foo("C-3PO")
f(42)

# Decleration in a single line
foo2(name) = println("Hi $name")
f2(x) = x^2
foo2("C-360")
f2(42)

# pass a matrix to f()
A = rand(2,2)
v = rand(3)
f(A)        # square of a matrix
f(v)        # square of a vector is no valid operation!
f.(v)        # Element-wise operation is valid however valid operation!
f.(A)        # Element-wise operation is valid however valid operation!


# Mutating vs. non-mutating functions
v = [3,5,2]
display(sort(v))
print(v)
display(sort!(v))   # this will permanently alter the order (like inplace=True)!
print(v)

# Broadcasting
