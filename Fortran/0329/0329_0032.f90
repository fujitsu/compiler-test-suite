module mdef
contains
pure function fun(x)
integer,intent(in)::x
fun=x*2
return
entry fune(x)
fune=x+1
return
entry fune2(x)
fune=x+2
return
end function
end module

use mdef
integer :: x,y(15),ii
x=5
do ii=1,15
y(ii)= fun(x+ii)+fune(x+ii) + fune2(x-ii)
end do

if ( sum(y) == 585 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,sum(y)
end if
end
