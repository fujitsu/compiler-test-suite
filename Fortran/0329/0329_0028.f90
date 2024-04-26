module m1
contains
pure function fx(x)
real,intent(in)::x
real::fx
fx=x*2.0
end function
end module

module m2
contains
pure function fx2(x)
use m1
real,intent(in)::x
real::fx2
fx2=fx(x)+1.0
end function
end

use m1
use m2
real::x,y(10)
integer::ii
x=2.0
do ii=1,10
y(ii)=fx2(x+ii) + fx(x+ii)
end do
if ( abs(sum(y) - 310.0) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,sum(y)
endif
end
