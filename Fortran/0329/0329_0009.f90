module mdef2
contains
pure function fun2_main(x)
integer,intent(in)::x
entry fun2(x)
fun2=x+2
end function
end module

module mdef
contains
pure function fun(x,ii)
use mdef2
integer,intent(in)::x,ii
entry entryfun(x,ii)
fun=x*2+ii+fun2(1)-3
end function
end module

use mdef
integer :: x,y,ii,s

x=5
s=0
do ii=1,5
y= entryfun(x,ii)
s=s+y
end do
if ( s == 65 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
end
