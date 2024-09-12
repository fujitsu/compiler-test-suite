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
function fun(dummy)
use mod1
type(ty2),pointer :: dummy(:)
class(ty),pointer :: fun(:)
END function
END INTERFACE

class(ty),pointer :: ptr(:)

type(ty2):: tar

ptr=>NULL(fun(NULL()))

if (SAME_type_AS(ptr,tar) .eqv. .TRUE.)then
print *,"PASS"
else
print *,201
endif

allocate(ty2:: ptr(10))
SELECT TYPE(ptr)
TYPE IS(ty)
print *,501
TYPE IS(ty1)
print *,901
TYPE IS(ty2)
print *,"PASS"
CLASS IS(ty)
print *,303
CLASS IS(ty1)
print *,404
CLASS IS(ty2)
print *,505
END SELECT

end program

function fun(dummy)
use mod1
type(ty2),pointer :: dummy(:)
class(ty),pointer :: fun(:)
fun =>dummy
end function
