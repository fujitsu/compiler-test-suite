Program main
type ty
integer :: ii=5
end type ty

type ty1
class(*),allocatable :: calc
integer ,allocatable :: k1
class(*),pointer ::kk=>NULL()
class(ty),pointer ::jj=>NULL()
end type ty1

type(ty1),pointer :: obj
type(ty) :: tar
class(*),pointer :: obj_ptr

allocate(obj)
obj_ptr=> obj%jj
if(SAME_type_As(obj_ptr,tar) .neqv. .TRUE.) then
print *,"FAIL"
else 
print *,"PASS"
endif
End Program
