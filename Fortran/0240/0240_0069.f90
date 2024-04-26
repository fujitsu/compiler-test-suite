integer, dimension (2,3) :: a, b
integer, dimension (3) :: c, d
a = reshape((/1,2,3,4,5,6/), (/2,3/))
c = (/1,2,3/)
b = cshift(a,1)
if (b(1,1) .ne.2 ) print *,'err'
if (b(1,2) .ne.4 ) print *,'err'
if (b(1,3) .ne.6 ) print *,'err'
if (b(2,1) .ne.1 ) print *,'err'
if (b(2,2) .ne.3 ) print *,'err'
if (b(2,3) .ne.5 ) print *,'err'
b = cshift(a,-1,2)
if (b(1,1) .ne.5 ) print *,'err'
if (b(1,2) .ne.1 ) print *,'err'
if (b(1,3) .ne.3 ) print *,'err'
if (b(2,1) .ne.6 ) print *,'err'
if (b(2,2) .ne.2 ) print *,'err'
if (b(2,3) .ne.4 ) print *,'err'
b = cshift(a,c,1)
if (b(1,1) .ne.2 ) print *,'err'
if (b(1,2) .ne.3 ) print *,'err'
if (b(1,3) .ne.6 ) print *,'err'
if (b(2,1) .ne.1 ) print *,'err'
if (b(2,2) .ne.4 ) print *,'err'
if (b(2,3) .ne.5 ) print *,'err'
d = cshift(c,2)
if (d(1) .ne.3 ) print *,'err'
if (d(2) .ne.1 ) print *,'err'
if (d(3) .ne.2 ) print *,'err'

print *,'pass'
end
