module m1
 contains
  subroutine s3(i)
  integer(kind=1) :: i
  i=1
  end subroutine
end module

module m2
use m1,ss=>s3
 interface sub
  module procedure ss
 end interface
end module

use m2
integer(kind=1) :: i1
call sub(i1)
if (i1.ne.1) write(6,*) "NG"
print *,'pass'
end
