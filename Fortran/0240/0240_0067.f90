integer, dimension (2,3) :: a, b
integer, dimension (2) :: c
integer, dimension (3) :: d
integer :: e
a = reshape((/1,2,3,4,5,6/), (/2,3/))
b = reshape((/1,2,3,5,6,4/), (/2,3/))
e = count(a==b)
if (e.ne.3) print *,'err'
d = count(a==b, 1)
if (d(1).ne.2) print *,'err'
if (d(2).ne.1) print *,'err'
if (d(3).ne.0) print *,'err'
c = count(a==b, 2)
if (c(1).ne.2) print *,'err'
if (c(2).ne.1) print *,'err'
print *,'pass'
end
