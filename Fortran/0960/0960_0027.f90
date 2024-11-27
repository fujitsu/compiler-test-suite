Program main
TYPE ty
class(ty),pointer :: jj(:)=>NULL()
END TYPE ty

TYPE ty1
type(ty):: bobj
END type ty1

type ty2
type(ty1):: aobj1
end type

class(ty2),pointer :: obj2(:)
class(*),pointer :: obj_ptr(:)

type(ty) :: tar

allocate(obj2(10))

obj_ptr=> obj2(1)%aobj1%bobj%jj
if(SAME_type_As(obj_ptr,tar) .neqv. .TRUE.) then
print *,"FAIL"
else 
print *,"PASS"
endif

deallocate(obj2)
allocate(obj2(10))

if(SAME_type_As(tar,obj2(1)%aobj1%bobj%jj) .neqv. .TRUE.) then
print *,"FAIL"
else
print *,"PASS"
endif


End Program
