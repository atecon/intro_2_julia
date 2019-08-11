import Pkg
Pkg.add("Plots")
Pkg.add("Plotly")
using Plots
using Plotly

x = -3:0.1:3
f(x) = x^2

y = f.(x)

# Load GR backend
gr()
plot(x,y,label="line")
scatter!(x,y,label="points")    # extends the previous plot

# Another plotting backend
plotly()
plot(x,y,label="line")
scatter!(x,y,label="points")    # extends the previous plot

xflip!()
xlabel!("My xlabel")
ylabel!("My ylabel")
title!("This is my title")

# Subplots
p1 = plot(x,x)
p2 = plot(x,x.^2)
p3 = plot(x,x.^3)
p4 = plot(x,x.^4)
plot(p1, p2, p3, p4, layout=(2,2),legend=false)
