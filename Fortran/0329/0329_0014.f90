module mdef
contains
pure integer function fun(x,i)
integer,intent(in)::x,i
fun=x*2+i
return
end function
pure integer function fun2(x,i)
integer,intent(in)::x,i
fun2=fun(x,i)+i
return
entry fun2e(x,i)
fun2=fun(x,i)+i
return
end function
end module

use mdef
integer :: x,y,ii,s
x=5
s=0
i=0
do ii=1,4
y= fun(x+1,i) + fun2(x,i+1) + fun(fun2(x-1,i),i-1)
s=s+y
end do
if ( y == 39 .and. s == 156 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
end
