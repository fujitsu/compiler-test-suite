MODULE MOD1
type ty
integer :: ii=10
END TYPE ty

TYPE,EXTENDS(TY):: TY2
INTEGER :: KK=20
END TYPE ty2

TYPE,EXTENDS(TY2):: TY3
INTEGER :: RR=30
END TYPE ty3

class(*),allocatable :: obj_alloc

contains
subroutine sub(dummy)
class(*) :: dummy
allocate(obj_alloc ,source = dummy)
end subroutine sub
END MODULE MOD1

program main
use mod1


character (LEN=10)::ch
type(ty3):: obj


call sub(ch)
print *,sizeof(obj_alloc)
deallocate(obj_alloc)
obj%kk= 100
call sub(obj)

select TYPE(obj_alloc)
TYPE IS(Integer)
print *,101
TYPE IS(CHARACTER(len=*))
print *,202
TYPE IS(ty)
print *,1001
TYPE IS(TY3)
IF(obj_alloc%kk /=100)then
print *,990
else
print *,"pass"
end if
end SELECt
END Program 
