program main

type TY
integer :: ii
end type

type,extends(TY):: ty1
integer :: kk
end type

class(ty),pointer :: ptr(:) => NULL()
type(ty),pointer :: tar(:)
type(ty),pointer :: tar2(:)

tar2=>NULL(tar)
 
if (associated(ptr)) then
if(SIZEOF(ptr) /=0)then
print *,101
else 
endif
endif
print *,"pass"
end program
