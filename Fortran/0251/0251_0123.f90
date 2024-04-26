module m1
type tt
 integer :: i
end type

contains
subroutine ss(dd)
type(tt) :: dd
type(tt) :: local

if(same_type_as(local,dd) .eqv. .true.) print *,'pass'
end subroutine
end module

use m1,t=>tt,bt=>tt
block
type(t) :: act
type(bt) :: act2
call ss(act2)
call ss(act)
end block
end
