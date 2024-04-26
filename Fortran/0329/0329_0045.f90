module mdef
contains
pure function fun(x)
integer,intent(in)::x
integer,dimension(10)::fun
fun=x*2+1
end function
end module

use mdef
integer :: s,i,j,x(10)
s=0
do i=1,10
x(i)=i+i
end do
do j=1,5
s=sum(fun(5))+sum(x)
end do
if ( s == 220 ) then
  print *,'pass'
else
  print *,'ng',s 
end if
end
