type ty
integer :: xx
end type ty
 
type,extends(ty) :: ty1
integer :: yy
end type ty1
 
call sub(NULL())          
print*,'pass'
contains
subroutine sub(cptr)
class(ty),pointer :: cptr(:)
type(ty),target  :: trg(10)
cptr=>trg
cptr(1)%xx = 10
cptr%xx = 10
end subroutine
end

