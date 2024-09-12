program main

type ty
integer ::ii=1
class(*),pointer :: obj_ptr
end type

character (LEN=10),target :: ch='test'
class(*),pointer :: obj_ptr1
class(*),pointer :: obj_ptr2

type (ty):: obj

allocate(obj_ptr1,SOURCE= ch)
obj = ty(5,ch)

if(SAME_TYPE_AS(obj%obj_ptr,obj_ptr1) .NEqv. .TRUE.)then
print *,101
else
print *,"pass"
end if

obj_ptr2=>obj%obj_ptr

select type(obj_ptr2)
TYPE IS(ty)
print *,101
TYPE IS(integer)
print *,201
TYPE IS(integer(kind=8))
print *,301
TYPE IS (character(LEN=*))
if ((sizeof(obj_ptr2) /= 10))then
print *,401
else
print *, "pass"
endif
end select
end program main
