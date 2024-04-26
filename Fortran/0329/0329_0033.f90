module mdef
contains
pure subroutine sub(x,y)
integer,intent(in)::x
integer,intent(out)::y
y=x*2
entry sube(x,y)
y=x+1
end subroutine
end module

use mdef
integer :: x,y,y1,y2,ii
x=3
y=0
do ii=1,4
call sub(x+ii,y1)
call sube(x+ii+1,y2)
y=y1+y2+y
end do
if ( y == 56 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y
end if
end
