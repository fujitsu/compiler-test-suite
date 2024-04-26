module m1
contains
pure subroutine fx(x,y)
real,intent(in)::x
real,intent(out)::y
y=x*2.0
end subroutine 
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
real::x,y,s,fxr
x=2.0
s=0.0
do ii=1,10
call fx(x,fxr)
y=fx2(x,real(ii))+fxr
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
