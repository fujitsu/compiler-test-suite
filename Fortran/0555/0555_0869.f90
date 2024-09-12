module mod1

type tty
integer :: jj=10
end type

type,extends(tty) :: deriv
integer :: kk=11
end type

contains
subroutine sub(dummy)
class (tty),allocatable,intent(out):: dummy 
class(tty),allocatable,intent(out):: dummy1
entry sub_entry(dummy1)
allocate(deriv :: dummy1)
end subroutine
end module mod1

use mod1
class (tty),allocatable:: act 
allocate(act)
call sub_entry(act)
select type(act)
type is(tty)
print *,101
type is(deriv)
print*,"pass"
class default
print *,201
end select
end
