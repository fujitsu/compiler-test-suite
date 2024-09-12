MODULE MOD2
type ty
class(*),pointer :: ptr =>NULL()
END TYPE ty

TYPE,EXTENDS(TY):: TY2
class(*),allocatable :: ptr1
INTEGER :: KK=20
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
integer :: ii=10
END TYPE ty3

type point 
type(ty3):: obj
class(*),allocatable :: ptr2
end type point


contains
Subroutine sub()
type(point), save:: obj_1
integer,save:: count_1 =0
type(ty2),target:: tar
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
END MODULE MOD2

program main
use mod2

interface
subroutine sub1()
end subroutine
end interface

call sub()
call sub1()
end 

subroutine sub1()
use mod2
call sub()
end subroutine
