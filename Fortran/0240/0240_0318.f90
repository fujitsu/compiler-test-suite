integer :: a,b,c
real, dimension(2,4) :: d
integer :: e = 2
if (e.ne.2   )print *,'err'
a=1
b=2
c=3
d=a+b+c
if (ubound(d,1).ne.2) print *,'err'
if (ubound(d,2).ne.4) print *,'err'
print *,'pass'
end
