MODULE m
integer::f1=0,f2=0,f3=0
integer::f11=0,f12=0,f13=0
TYPE t1
REAL a,b
integer::z1
CONTAINS
FINAL :: t1f,t1a
END TYPE
TYPE,EXTENDS(t1) :: t2
integer::z2
TYPE(t1) :: y2(2)
CONTAINS
FINAL :: t2f
END TYPE
CONTAINS
SUBROUTINE t1a(x) 
TYPE(t1) :: x(:)
f11=f11+1
END SUBROUTINE
SUBROUTINE t1f(x) 
TYPE(t1) :: x
f1=f1+1
END SUBROUTINE
SUBROUTINE t2f(x) 
TYPE(t2) :: x
f2=f2+1
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
type(t1),allocatable:: x1(:)
type(t2),allocatable:: x2(:)

allocate (t1:: x1(2))
deallocate(x1)

allocate (t2:: x2(2))
deallocate(x2)

END SUBROUTINE
use m
call example
if (f11/=4) print *,100,f11
if (f1/=0) print *,101,f1
if (f2/=0) print *,102,f2
if (f3/=0) print *,103,f3

print *,'pass'
end
