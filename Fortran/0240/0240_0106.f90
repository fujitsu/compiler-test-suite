integer, dimension (2,3) :: a, b
integer, dimension (3) :: c, d
a = reshape((/1,2,3,4,5,6/), (/2,3/))
c = (/1,2,3/)
b = eoshift(a,1)
b = eoshift(a,-1,0,2)
b = eoshift(a,-c,1)
d = eoshift(c,2)
print *,'pass'
end
