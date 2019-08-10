#Dictionaries (are not ordered)
D = Dict("Name" => "Artur", "Age" => 36)
D["Country"] = "GER"
D["Country"]
D[1]            # doesn't work as Dictionaries aren't ordered
print(D)

dropped = pop!(D, "Name")
println(D)
println(dropped)

# Tuples (are immutable -- cannot be changed!)
T = ("lion", "pig", 8722)
print(T)
print(T[1])
T[2] = "duck"   # NOT working!

# Arrays (are mutable + contain ordered sequences)
A = ["Ted", "Josh", "Tim"]
B = ["Ted", "Josh", "Tim", 27]
B
println(B[3])
B[1] = "NotTed"
println(B)

F = [1,1,2,3,5,8]
F
F[1] = "aString"        # Can't update from numeric to string
push!(F,99)             # add a scalar at last position
print(F)
pop!(F)                 # drop value of last position
print(F)
