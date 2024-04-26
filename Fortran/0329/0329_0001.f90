module m1
contains
pure function fx(x,i)
real,intent(in)::x,i
real::fx
fx=x*2.0+i
return
entry fxentry(x,i)
fxentry=x*2.0+i
end function
end module

use m1
real::x,y,s
integer :: ii
x=2.0
s=0.0
do ii=1,10
y=fx(x,real(ii)) + fxentry(x,real(ii+1))
s=s+y
end do
if ( abs(s - 200.0) < 0.00001 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
endif
end
