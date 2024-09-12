MODULE MOD1
type TY
integer :: ii
end type

type,extends(TY):: ty1
integer :: kk
end type

type,extends(TY1):: ty2
integer :: kkk
end type
END MODULE MOD1

program main
use mod1

INTERFACE
function fun()
use mod1
type(ty2),pointer :: fun
END function
END INTERFACE

class(ty),pointer :: ptr


ptr=>NULL(fun())
if(sizeof(ptr) /= 12)then 
print *,101
else
print *,"PASS"
endif
end program

function fun()
use mod1
type(ty2),pointer :: fun
allocate(fun)
end function

