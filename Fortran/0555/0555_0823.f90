program main
type ty
integer ::ii=10
end type ty

type ,extends(ty):: ty1
integer ::ii2=20
end type ty1

type,extends(ty1):: ty2
integer ::ii1=30
end type ty2


type point
class(*),pointer :: obj_alloc
end type

class(*),allocatable :: obj_ptr3(:)

allocate(ty2 ::obj_ptr3(10))


call sub(obj_ptr3)

contains
subroutine sub(dummy)
class(*),allocatable,target :: dummy(:)
class(*),allocatable :: obj_ptr
type(point) :: obj

obj=point(dummy(1))

allocate(obj_ptr,source=obj%obj_alloc)

select type(obj_ptr)
CLASS IS(TY)
print *,501
CLASS IS(TY1)
print *,601
TYPE IS(TY2)
if(obj_ptr%ii1 /=30) then
print *,501
else 
print *,"pass"
endif
CLASS DEFAULT
print *,701
end select
end subroutine
end program main
