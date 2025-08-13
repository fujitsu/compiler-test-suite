real :: x
x=1.0
call sub(x,x)
write (25,*) x
print *,'pass'
contains

subroutine sub(x,y)
pointer (p1,b),(p2,c)
real x,b,c
 p1=loc(x)
 p2=loc(y)
 b=5.0
 c=6.0
 end subroutine
end
