module mdef
contains
pure integer function fun(x)
integer,intent(in)::x
fun=x*2+1
end function
end module

use mdef
integer :: x(10),s,i,j,y
s=0
do i=1,10
call sub(i,y)
x(i)=y
end do
do j=1,5
s=s+sum(x(fun(0):fun(5)-1:fun(1)-1))
end do
if ( s == 250 ) then
  print *,'pass'
else
  print *,'ng'
  print *,x(fun(0):fun(5)-1:fun(1)-1)
end if
contains
subroutine sub(x,y)
integer::x,y
y=fun(x)-1
end subroutine
end
