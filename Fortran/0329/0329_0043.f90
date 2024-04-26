module mdef
contains
pure subroutine sub(x,y)
integer,intent(in)::x
integer,intent(out)::y
y=x*2+1
end subroutine
end module

use mdef
integer :: s,ii,Y
s=0
do ii=1,2
call sub(ii,y)
s=19+s+ii+y
end do
if ( s == 49 ) then
  print *,'pass'
else
  print *,'ng',s
end if
end
