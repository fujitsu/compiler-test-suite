program main
type ty
integer ::ii
end type

type ,extends(ty):: ty1
integer ::ii2
end type

type,extends(ty1):: ty2
integer ::ii1
class(*),pointer :: obj_ptr1(:)
end type

INTERFACE
function fun()
character (len=:),pointer :: fun(:)
end function
END INTERFACE

class(*),pointer :: obj_ptr3(:)
type (ty2):: obj
obj = ty2(4,5,6,fun())
obj_ptr3=>obj%obj_ptr1

select type(obj_ptr3)
TYPE IS(ty)
print *,101
TYPE IS(integer)
print *,201
TYPE IS(integer(kind=8))
print *,301
TYPE IS (character(LEN=*))
if(SIZEOF(obj_ptr3)/=40)then
print *,401
else
print *,"pass"
endif
CLASS IS(TY)
print *,501
CLASS IS(TY1)
print *,501
CLASS DEFAULT
print *,601
end select
end program main

function fun()
character (len=:),pointer :: fun(:)
allocate (character(LEN= 4):: fun(10))
fun ="ABCD"
end function
