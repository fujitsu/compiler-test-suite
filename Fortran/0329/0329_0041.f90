module mdef
contains
pure function fun(x)
integer,intent(in)::x
integer::fun
fun=x*2+1
return
entry fune(x)
fune=x*3
end function
end module

use mdef
integer :: s,ii
s=0
do ii=1,2
s=fun(100)+19+s+ii+fune(10)
end do
if ( s == 503 ) then
  print *,'pass'
else
  print *,'ng',s
end if
end
