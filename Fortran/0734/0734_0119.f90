integer, dimension (2,3) :: a, b
logical, dimension (2) :: c
logical, dimension (3) :: d
logical :: e
a = reshape((/1,2,3,4,5,6/), (/2,3/))
b = reshape((/1,2,3,5,6,4/), (/2,3/))
e = any (a==b)
d = any (a==b, 1)
c = any (a==b, 2)
print *,'pass'
end
