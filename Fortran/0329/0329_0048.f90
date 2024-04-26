module mdef
contains
pure subroutine sub(x,y)
integer,intent(in)::x
integer,dimension(10),intent(out)::y
y=x*2+1
end subroutine
end module

use mdef
integer :: s,i,j,x(10),y(10)
s=0
do i=1,10
x(i)=i+i
end do
do j=1,5
call sub(5,y)
s=sum(y)+sum(x)
end do
if ( s == 220 ) then
  print *,'pass'
else
  print *,'ng',s 
end if
end
