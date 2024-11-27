module mod01
 integer,external,pointer,protected :: m01_eifuncp01
 integer,external,pointer,protected :: m01_eifuncp02
end module

use mod01
call csub01(m01_eifuncp01,m01_eifuncp02)

contains
 subroutine csub01(cs01_dfp01, cs01_dfp02)
  procedure(integer),pointer,intent(out)   :: cs01_dfp01
  procedure(integer),pointer,intent(inout) :: cs01_dfp02
 end subroutine
end
