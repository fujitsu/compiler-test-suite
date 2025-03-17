module m
type tdef
integer :: i1
integer :: a(10),b(10)
integer :: i2
end type
type(tdef)::tt
!$OMP threadprivate(tt)
end module
use m
tt%a = 1
tt%b = 1
if ( tt%a(10)==1 .and. tt%b(10)==1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,tt%a,tt%b
endif
end
