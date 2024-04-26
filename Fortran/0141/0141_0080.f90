module m1
  type z
     integer,pointer:: z1(:)
  end type
contains
subroutine ss
type (z) :: var
allocate (var% z1(2) )
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
call ss
print *,'pass'
end
