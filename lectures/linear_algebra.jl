A = rand(1:4,3,3)

B = A           # this is a reference aka pointer!
C = copy(A)     # create a distinct object

display([B C])

A[1] = 17
display([B C])  # see how the 1,1 element has changed in B


x = ones(3)     # 3 by 1 vector

# Multiplication
b = A*x
println(b)

# Transposition
Asym = A + A'

# Transposed multiplication
Apd = A'A

# Solving linear systems
# Ax=b can be solved
display(A\b)

# Overdetermined systems
Atall = A[:,1:2]        # not squared matrix
display(Atall)
display(Atall\b)
