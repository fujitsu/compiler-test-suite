module m1
  type z
     integer,allocatable:: z1(:)
  end type
type (z) :: var
contains
subroutine ss
var%z1(1)=1
call inner
if (var%z1(1)/=2) print *,1001,var%z1(1)
contains
 subroutine inner
  var%z1(1)=2
 end subroutine
end subroutine
end
use m1
allocate (var% z1(2) )
call ss
print *,'pass'
end
