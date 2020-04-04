#Dictionaries (are not ordered)
D = Dict("Name" => "Artur", "Age" => 36);
print(D)
D["Country"] = "GER";
print(D["Country"])
print(D[1])            # doesn't work as Dictionaries aren't ordered
print(D)
print(length(D))

print(values(D))

dict2 = Dict("Surname" => "T.", "Hobby" => "coding")
append!(D, dict2)

dropped = pop!(D, "Name")
print(D)
print(dropped)

# Tuples (are immutable -- cannot be changed!)
T = ("lion", "pig", 8722);
print(T)
print(T[1])
T[2] = "duck"   # NOT working!
print(lenght(T))    # not defined
print(values(T))

# Arrays (are mutable + contain ordered sequences)
A = ["Ted", "Josh", "Tim"]
B = ["Ted", "Josh", "Tim", 27]
print(B)
println(B[3])
B[1] = "NotTed"
print(B)
print(values(B))

F = [1,1,2,3,5,8]
print(F)
F[1] = "aString"        # Can't update from numeric to string
push!(F,99)             # add a scalar at last position
print(F)
pop!(F)                 # drop value of last position
print(F)
print(length(F))

try
    someOtherVar  # => ERROR: UndefVarError: someOtherVar not defined
catch e
    println(e)
end
