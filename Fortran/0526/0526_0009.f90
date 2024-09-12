module m1
type ty
 contains
  procedure:: a1
  procedure:: a2
  generic :: assignment(=) => a1
  generic :: assignment(=) => a2
end type
contains
 subroutine a1(d1,d2)
  class(ty),intent(out) :: d1
  integer,intent(in) ::  d2
 end
 subroutine a2(d1,d2)
  class(ty),intent(out) :: d1
  real,intent(in) ::  d2
 end
end module

module m2
use m1
end

use m2
print *,'pass'
end

