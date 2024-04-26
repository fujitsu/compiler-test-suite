module mdef
contains
pure function fun(x)
integer,intent(in)::x
fun=x*2
return
entry fune(x)
fune=x+1
return
end function
end module
use mdef
integer :: x,y(10),ii
x=5
do ii=1,10
y(ii)= fun(x+ii+ii)+fune(x-ii)
end do
if ( sum(y) == 325 ) then
  print *,'pass'
else
  print *,'ng'
 print *,sum(y)
end if
end
