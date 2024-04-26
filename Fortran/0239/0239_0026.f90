MODULE m
integer::f1=0,f2=0
TYPE t1
REAL a,b
END TYPE
TYPE,EXTENDS(t1) :: t2
REAL,POINTER :: c(:),d(:)
CONTAINS
FINAL :: t2f
END TYPE
TYPE,EXTENDS(t2) :: t3
REAL,POINTER :: e
CONTAINS
FINAL :: t3f
END TYPE
CONTAINS
SUBROUTINE t2f(x)
TYPE(t2) :: x
IF (ASSOCIATED(x%c)) DEALLOCATE(x%c)
IF (ASSOCIATED(x%d)) DEALLOCATE(x%d)
f1=f1+1
END SUBROUTINE
SUBROUTINE t3f(y)
TYPE(t3) :: y
IF (ASSOCIATED(y%e)) DEALLOCATE(y%e)
f2=f2+1
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
TYPE(t1),allocatable:: x1
TYPE(t2),allocatable:: x2
TYPE(t3),allocatable:: x3
allocate(x1,x2,x3)
x2%c=>null()
x2%d=>null()
x3%c=>null()
x3%d=>null()
x3%e=>null()
deallocate(x1,x2,x3)
END SUBROUTINE
use m
call example
if (f1/=2) print *,101,f1
if (f2/=1) print *,102,f2

print *,'pass'
end

