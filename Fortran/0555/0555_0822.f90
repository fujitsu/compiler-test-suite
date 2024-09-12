program main
type ty
integer ::ii
end type ty

type ,extends(ty):: ty1
integer ::ii2
end type ty1

type,extends(ty1):: ty2
integer ::ii1
class(*),pointer :: obj_ptr4(:)
end type ty2

class(ty),allocatable :: obj_ptr3(:)

allocate(ty2 ::obj_ptr3(10))

obj_ptr3(2)%ii=10

call sub(obj_ptr3)

contains
subroutine sub(dummy)
class(ty),target :: dummy(10)
class(*),pointer :: obj_ptr(:)
type(ty2) :: obj

obj=ty2(4,5,6,dummy)

obj_ptr=>obj%obj_ptr4

select type(obj_ptr)
CLASS IS(TY)
print *,501
CLASS IS(TY1)
print *,501
CLASS IS(TY2)
if( obj_ptr(2)%ii /=10)then
print *,501
else 
print *,"pass"
endif
CLASS DEFAULT
print *,601
end select
end subroutine
end program main
