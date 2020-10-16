using LinearAlgebra

## a point of n-dimension, vector
a = [3
    4]

## distance
d = sqrt(sum(a .^ 2))
d = norm(a) ## with norm

## multiply scala to vector
m = a * 2
m = a * -1

## unit vector of a vector
u = normalize(a)

## sum of two vector, diagonal of parallelogram
b = [5
    6]
s = a + b

## linear combination
w = [0.3
    0.7]
c = a * w[1] + b * w[2]

## subtraction of vector, starting point is a
t = a - b

## Euclidean distance
ed = norm(a-b)

## inner product and cosine
ip = transpose(a) * b
co = acos(ip / (norm(a)*norm(b)))

## orthogonal
a = [1, 0]
b = [0, 1]
ot = transpose(a) * b
isOrthogonal = ot == cosd(90)

## orthonormal
a = [1, 0, 1]
b = [0, 1, 1]
c = [1, 1, 0]
transpose(a) * b
transpose(b) * c
transpose(c) * a

## cosine similarity
cs = 1 - (transpose(a) * b / (norm(a)*norm(b)))

## projection
a = [7
    2]
d = [3
    6]
pj_a = (transpose(d) * a / norm(a)^2) * a
pj_d = (transpose(a) * d / norm(d)^2) * d

## rejection
rj_a = a - pj_a
rj_d = d - pj_d
