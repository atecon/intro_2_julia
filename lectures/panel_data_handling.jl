Pkg.add("CSV")
Pkg.add("DataFrames")
using DataFrames, CSV, Statistics

# Open csv
PATH_DATA = "../data/grunfeld.csv"
data = CSV.read(PATH_DATA)
show(data, allrows=true)        # for proper printing
#show(data, allcols=true)        # for proper printing
typeof(data)
size(data)
size(data,2)

print(first(data, 6))
print(data[!,[:invest,:value]])
print(data[!,[:firm,:invest,:value]])
print(data[data.firm .== 1,:])

data[(data.firm .== 1) .& (data.invest .> 400), :]

data[:firm'].max()
DataFrame.describe(data.invest)
