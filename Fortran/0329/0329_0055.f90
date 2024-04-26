module mdef
contains
pure integer function fun(x)
integer,intent(in)::x
fun=x*2+1
end function
end module

use mdef
integer :: x,i,s
s=0
x=1
do i=fun(x),fun(x)+fun(x),1
s=s+i+fun(i)
end do
if ( s == 58 ) then
  print *,'pass'
else
  print *,'ng',s
end if
end
