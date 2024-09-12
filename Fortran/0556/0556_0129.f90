type ty
integer :: xx
end type ty

type,extends(ty) :: ty1
integer :: yy
end type ty1

class(*),pointer :: cptr1(:)
call sub(NULL(cptr1))
print*,'pass'
contains
subroutine sub(cptr)
class(*),pointer :: cptr(:)
type(ty1),target  :: trg(10)
cptr=>trg
end subroutine
end
