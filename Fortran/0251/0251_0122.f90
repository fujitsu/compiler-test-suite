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

use m1
block
type(tt) :: act
call ss(act)
end block
end
