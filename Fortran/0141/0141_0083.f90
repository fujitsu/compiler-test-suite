module m1
  type z
     integer:: z1
  end type
type (z),pointer :: var(:)
contains
subroutine ss
call inner1
call inner2
contains
 subroutine inner1
allocate (var(2) )
  var(2)%z1=1
 end subroutine
 subroutine inner2
  var(2)%z1=2
 end subroutine
end subroutine
end
use m1
call ss
if (var(2)%z1/=2) print *,101,var(2)%z1
print *,'pass'
end
