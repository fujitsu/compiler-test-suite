module mdef
contains
pure integer function fun(x)
integer,intent(in)::x
integer :: fune
fun=x*2
return
entry fune(x)
fun=x*3
end function
pure integer function fun2(x)
integer,intent(in)::x
fun2=x*2
return
entry fun2e(x)
fun2=x*2+1
end function
end module

use mdef
integer :: x,y,s
x=5
s=0
do ii=1,4
y= fune(x+ii) + fun2(x-ii)  + fun(fun2(x)+ii*2)
s=s+y
end do
if ( y == 65 .and. s == 230 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
end
