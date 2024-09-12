program main

type ty
integer ::ii
end type

type ,extends(ty):: ty1
integer ::ii2
end type

type,extends(ty1):: ty2
integer ::ii1
class(ty1),pointer :: obj_ptr1
class(ty),pointer :: obj_ptr2
end type

class(*),pointer :: obj_ptr3
class(*),pointer :: obj_ptr4

type (ty2):: obj

obj = ty2(4,5,6,NULL(),NULL())

allocate(ty1:: obj%obj_ptr1)
allocate(ty:: obj%obj_ptr2)

obj_ptr3=>obj%obj_ptr1
obj_ptr4=>obj%obj_ptr2

select type(obj_ptr4)
TYPE IS(ty)
if(sizeof(obj_ptr4) /=4)then
print *,101
else
print *,"pass"
endif
TYPE IS(integer)
print *,201
TYPE IS(integer(kind=8))
print *,301
TYPE IS (character(LEN=*))
print *,401
CLASS IS(TY)
print *,501
CLASS IS(TY1)
print *,501
CLASS DEFAULT
print *,601
end select

select type(obj_ptr3)
TYPE IS(ty)
print *,101 
TYPE IS(integer)
print *,201
TYPE IS(integer(kind=8))
print *,301
TYPE IS (character(LEN=*))
print *,401
CLASS IS(TY)
print *,501
CLASS IS(TY1)
if(sizeof(obj_ptr3) /=8)then
print *,701
else
print *,"pass"
endif
CLASS DEFAULT
print *,601
end select
end program main
