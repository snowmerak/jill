using Plots

# empty
plot()

# random 10x10 plot
plot(rand(10), rand(10))

# 1:10, 1:2:20 plot
plot(1:10, 1:2:20)

# set title and label
plot!(title = "New Title", xlabel = "new x label", ylabel = "new y label")

# limit and tick
plot!(xlims = (0, 15), ylims = (0, 30), xticks = 0:0.5:15, yticks = [0,1,5,30])

# 2-labeled plot
plot(1:10, rand(10, 2), title = "2 fact", label = ["f" "s"])

# series type
scatter(1:10, rand(10))
histogram(1:10, rand(10))

# multiple plots
plot(1:10, rand(10, 4), layout = (4, 1))

# using user recipes
using StatsPlots
using DataFrames
df = DataFrame(a = 1:10, b = 10 * rand(10), c = 10 * rand(10))
@df df plot(:a, [:b :c])
# scatter
@df df scatter(:a, [:b :c])

# using a type recipe
using Distributions
plot(Normal(4, 5), lw = 3)

# using series recipe
violin(["1" "2" "3" "4"], rand(100, 4), leg = false)
boxplot(["1" "2" "3" "4"], rand(100, 4), leg = false)

# function
plot(sin, cos, 0, 2π)
