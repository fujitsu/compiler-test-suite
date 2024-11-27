Module mod1
type ty
class(ty),pointer ::jj=>NULL()
end type ty

type ty1
type(ty):: bobj
end type ty1

type ty2
type(ty1):: aobj1
end type

type(ty2),pointer :: obj2
class(*),pointer :: obj_ptr
end module mod1

Program main
use mod1
type(ty) :: tar
allocate(obj2)
obj_ptr=> obj2%aobj1%bobj%jj
if(SAME_type_As(obj_ptr,tar) .neqv. .TRUE.) then
print *,"FAIL"
else 
print *,"PASS"
endif
End Program
