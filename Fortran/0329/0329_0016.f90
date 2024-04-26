module mdef
contains
pure integer function fun2(x,i)
integer,intent(in)::x,i
fun2=fun(x,i)+i
end function
pure integer function fun(x,i)
integer,intent(in)::x,i
fun=x*2+i+i
return
entry fune(x,i)
fune=x*2-i
end function
end

use mdef
integer :: x,y,ii,s,i
x=5
s=0
do ii=1,10
i=ii-1
y= fune(x,i) + fun2(x,i) + fun(fun2(x,i),i)
s=s+y+ii
end do
if ( y == 130 .and. s == +905 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
end
