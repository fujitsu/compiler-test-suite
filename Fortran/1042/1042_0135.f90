module m
integer :: i1
integer :: a(10),b(10)
!$OMP threadprivate(a,b)
integer :: i2
end module
use m
a = 1
b = 1
if ( a(10)==1 .and. b(10)==1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,a,b
endif
end
