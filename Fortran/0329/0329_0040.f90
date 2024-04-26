module mdef
contains
pure function fun(x)
integer,intent(in)::x
integer::fun
fun=x*2+1
end function
end module

use mdef
integer :: s,ii
s=0
do ii=1,2
s=fun(100)+19+s+ii
end do
if ( s == 443 ) then
  print *,'pass'
else
  print *,'ng',s
end if
end
