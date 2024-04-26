module mdef
contains
pure function inc(x)
integer,intent(in)::x
integer::inc
inc=x+1
end function
end module 

use mdef
integer::a(10),ii
a=10
do ii=1,1
a(inc(inc(inc(a(inc(0))-4))))=4
if ( a(9) == 4 ) then
  print *,'pass'
else
  print *,'ng'
endif
end do
end
