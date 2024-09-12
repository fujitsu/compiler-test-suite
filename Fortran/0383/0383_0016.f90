module mod
 real aa
contains
 subroutine sub(tp)
 type:: ty
  integer:: i=1
  integer:: j=2
 end type
 type,extends(ty):: ty1
  real:: k=3.0
  real:: l=4.0
 end type
 type(ty1):: tp
 print *,tp%i,tp%k
 end subroutine
end module

module mod2
 use mod,only:sub
end module

module mod3
use mod,only:aa
end module

use mod2
use mod3
print *,'pass'
end
