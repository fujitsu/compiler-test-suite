program main

type TY
integer :: ii
end type

type,extends(TY):: ty1
integer :: kk
end type

class(ty),pointer :: ptr
type(ty),pointer :: tar
type(ty1),pointer :: ptr_2

ptr=>NULL(tar)
if(SIZEOF(ptr) /=4)then
print *,101
else 
print *,"pass"
endif

ptr=>NULL(ptr_2)
if(SIZEOF(ptr) /=8)then
print *,101
else 
print *,"pass"
endif
end program

