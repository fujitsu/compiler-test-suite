MODULE m
integer::f1=0
TYPE t1
REAL a,b
integer::z1
CONTAINS
FINAL :: t1f
END TYPE
contains
SUBROUTINE t1f(x) 
TYPE(t1) :: x
f1=f1+1
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
TYPE(t1) x1

END SUBROUTINE
use m
call example
if (f1/=1) print *,101,f1

print *,'pass'
end

