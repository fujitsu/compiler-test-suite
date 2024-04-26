real :: x,y
x=1
y=2
call sub(x,y)
if ( x==5 .and. y==6 ) then
  print *,'pass'
else
  print *,'ng'
end if
contains

subroutine sub(x,y)
pointer (p1,b),(p2,c)
real x,b,c
 p1=loc(x)
 p2=loc(y)
 b=5
 c=6
 end subroutine
end
