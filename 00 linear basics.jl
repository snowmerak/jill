## scala
s = 0

## 1-dimension vector
v = [1]

## 5-dimension vector
v = [1, 2, 3, 4, 5]

## 3x3 matrix
m = [1 2 3
    4 5 6
    7 8 9]

## 3x3 3-dimension tensor
t = [[1 2 3
    4 5 6
    7 8 9],
    [9 8 7
    6 5 4
    3 2 1],
    [0 0 0
    0 0 0
    0 0 0]]

## LinearAlgebra
using LinearAlgebra

## transpose
tp = transpose(m)

## zeros
z = zeros(3, 3)

## ones
o = ones(3, 3)

## diagonal matrix
d = Diagonal(m)

## 10x10 identity matrix
i = Diagonal(ones(10))
i = I(10)

## symmetric matrix
s = Symmetric(m)
s = Symmetric([1 2 3; 0 4 5; 0 0 6])

## is symmetric?
b = m == transpose(m)

## example vectors
a = [1, 2, 3]
b = [4, 5, 6]

## element-wise
p = a + b
m = a - b

## 2x2 matrix
a = [1 4
    8 3]
b = [6 3
    2 9]

## 2x2 element-wise
p = a + b
m = a - b

## vector or matrix * scala
t = a * 3

## broadcasting
b = a .+ 3
b = a .- 3

## inner product
v1 = [1, 2, 3, 4, 5]
v2 = [3, 4, 5, 6, 7]
p = transpose(v1) * v2

## 2x2 product
v1 = [1 2
    4 5]
v2 = [5 6
    3 9]
p = v1 * v2

## weighted sum
w = [1, 1, 5, 1, 1]
v = [5, 3, 6, 2, 9]
p = transpose(w) * v

## weighted average
a = p / sum(w)

## Statistics
using Statistics

## average of array
mean(v)

## submatrix
m = [4 2 9
    3 1 7
    5 8 6]
sm = m[2:3, 1:2]

## norm
n = norm(m)

## trace
t = sum(Diagonal(m))

## determinant
d = det(m)

## 2a + 5b + 3c = 4
## 5a + b + 9c = 4
## 3a + 7b + 2c = 4
l = [2 5 3
    5 1 9
    3 7 2]
r = [4
    4
    4]

## inverse matrix
iv = inv(l)

## solve least square ploblem
rs = \(l, r)
