module m1
  type z
     integer,pointer:: z1(:)
  end type
type (z) :: var
contains
subroutine ss
call inner1
call inner2
contains
 subroutine inner1
allocate (var% z1(2) )
  var%z1(1)=1
 end subroutine
 subroutine inner2
  var%z1(1)=2
 end subroutine
end subroutine
end
use m1
call ss
if (var%z1(1)/=2) print *,101,var%z1(1)
print *,'pass'
end
