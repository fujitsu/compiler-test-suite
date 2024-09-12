program main

type ty
integer ::ii=1
end type

type,extends(ty):: ty1
integer :: yy=8
end type


type,extends(ty1):: ty3
integer :: jj=10
end type

class(ty),allocatable :: obj_alloc
type(ty3),allocatable :: obj_alloc1
type(ty3),allocatable :: obj_alloc2


allocate(ty3:: obj_alloc1,obj_alloc,obj_alloc2)

select type(obj_alloc)
TYPE IS(ty)
print *,101
TYPE IS(ty1)
print *,101
TYPE IS(ty3)
if(obj_alloc%jj /=10)then
print *,201
else
print *, "pass"
endif
end select
end program main
