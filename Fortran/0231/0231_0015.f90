module mod1
type ty
sequence
integer :: jj
procedure(sub),pointer,nopass:: prc
end type
interface xxx
subroutine sub(dmy)
type ty
sequence
integer :: jj
procedure(sub),pointer,nopass:: prc
end type
type(ty) :: dmy
end subroutine
end interface
end module
use mod1
type(ty)::v,d
d%jj=1
v%prc=>sub
d%prc=>sub
call v%prc(d)
print *,'pass'
end
subroutine sub(dmy)
type ty
sequence
integer :: jj
procedure(sub),pointer,nopass:: prc
end type
type(ty) :: dmy
if (dmy%jj/=1) print *,202
if (.not.associated(dmy%prc,sub)) print *,203
end subroutine
