Program main
type ty
class(ty),pointer ::jj=>NULL()
end type ty

type ty1
type(ty):: obj
end type ty1

type ty2
type(ty1):: obj1
end type

type(ty2),pointer :: obj2
type(ty) :: tar
class(*),pointer :: obj_ptr

allocate(obj2)
obj_ptr=> obj2%obj1%obj%jj
if(SAME_type_As(obj_ptr,tar) .neqv. .TRUE.) then
print *,"FAIL"
else 
print *,"PASS"
endif
End Program
