subroutine s1
type ty
integer(kind=8) :: xx
end type ty
 
type,extends(ty) :: ty1
integer(kind=8) :: yy
end type ty1

class(ty1),pointer :: cptr1(:)
call sub(NULL(cptr1))        
contains

subroutine sub(d_cptr)
class(ty1),pointer ::d_cptr(:)


print*, d_cptr(1)%xx 
end subroutine
end
print *,'pass'
end
