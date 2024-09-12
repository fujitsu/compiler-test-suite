module mod1
interface
subroutine sub1
end subroutine
end interface
contains
subroutine sub(arg)
type ty
sequence
integer :: jj
procedure(sub1),nopass,pointer:: prc
end type
type(ty):: arg
end subroutine
end module

use mod1
print *,'pass'
end
