module mod
 type:: ty
  integer:: i=1
  integer:: j=2
 end type
contains
 subroutine sub1(tp1)
 type(ty):: tp1
 print *,tp1%i
 end subroutine
end module

module mod2
 use mod,only:sub1
end module

module mod3
use mod
end module

use mod2
use mod3
print *,'pass'
end
