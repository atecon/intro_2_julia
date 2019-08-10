A = ["Ted", "Josh", "Tim"]
counter = 1
while counter <= length(A)
    name = A[counter]
    println("Hi $name")
    counter += 1
end


for n in 1:10
    println(n)
end

for name in A
    println("Hello $name!")
end

m, n = 5, 5
M = zeros(m, n)
for i in 1:m
    for j in 1:n
        M[i,j] = i+j
    end
end
println(M)

# Alternatively
for i in 1:m, j in 1:n
        M[i,j] = i+j
end
println(M)

# by means of array comprehension...
C = [i+j for i in 1:m, j in 1:n]
println(C)

for n=1:5
    A = [i+j for i in 1:n, j in 1:n]
    display(A)
end
