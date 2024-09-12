type ty
integer :: xx
end type ty
 
type,extends(ty) :: ty1
integer :: yy
end type ty1
 
class(ty),pointer :: cptr1(:)
call sub(NULL(cptr1))
print*,'pass'
contains
subroutine sub(cptr)
class(ty),pointer :: cptr(:)
type(ty1),target  :: trg(10)
cptr=>trg
cptr(1)%xx = 10
cptr%xx = 10
end subroutine
end
