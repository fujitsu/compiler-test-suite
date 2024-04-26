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
  var%z1(2)=1
 end subroutine
 subroutine inner2
  var%z1(2)=2
 end subroutine
end subroutine
subroutine tt
call ss
end subroutine
end
use m1
allocate (var%z1(2) )
call tt
if (var%z1(2)/=2) print *,101,var%z1(2)
print *,'pass'
end
