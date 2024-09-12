MODULE MOD1
type ty
integer :: ii=10
class(*),allocatable :: ptr1(:)
END TYPE ty

TYPE,EXTENDS(TY):: TY2
integer :: jj=90
class(ty),pointer :: ptr2 =>NULL()
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
INTEGER :: RR=30
class(ty2),pointer ::ptr3(:)=>NULL()
END TYPE ty3

type(ty3),save :: obj
end module mod1

program main
use mod1

class(*) ,pointer :: ptr4=>NULL()
class(*) ,pointer :: ptr5=>NULL()
if (SAME_type_AS(ptr4,ptr5) .neqv. .TRUE.)then
print *,"pass"
else
print *,201
endif

allocate (ty2::ptr4)

select type(ptr4)
TYPE IS(INTEGER)
print *,401
TYPE iS(CHARACTER(LEN=*))
print *,501
TYPE iS(ty2)
PRINT *,"pass"
TYPE iS(ty3)
print *,701
end select


END Program 
