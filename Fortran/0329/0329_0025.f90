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
pure function fx2(x,i)
use m1
real,intent(in)::x,i
real::fx2
fx2=x+1.0+i
end function
end

use m1
use m2
real::x,y,s
x=2.0
s=0.0
do ii=1,10
y=fx2(x,real(ii))+fx(x)
s=s+y
end do
if ( abs(y - 17.0) < 0.00001 .and. &
     abs(s - 125.0) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
endif
end
