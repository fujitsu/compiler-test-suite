MODULE MOD1
type ty
class(*),pointer :: ptr =>NULL()
END TYPE ty

TYPE,EXTENDS(TY):: TY2
INTEGER :: KK=20
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
integer :: ii=10
END TYPE ty3

type point 
type(ty3):: obj
end type
END MODULE

program main
use mod1

interface
subroutine sub()
end subroutine

subroutine sub1()
end subroutine
end interface

call sub()
call sub1()

end 

Subroutine sub()
use mod1
type(point),save:: obj_1
type(ty2),target:: tar
integer,save:: count_1 =0
if(count_1 == 0)then
if (ASSOCIATED(obj_1%obj%ptr)) then
print *,"FAIL"
else
print *,"PASS"
endif
else
if (ASSOCIATED(obj_1%obj%ptr)) then
print *,"pass"
else
print *,"FAIL"
endif
endif

obj_1%obj%ptr=>tar
count_1 =1
end subroutine

subroutine sub1()
interface
subroutine sub()
end subroutine
end interface
call sub()
end subroutine
