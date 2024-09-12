MODULE m
TYPE t1
integer::z1
CONTAINS
FINAL :: t1f
END TYPE
contains
SUBROUTINE t1f(x) 
TYPE(t1) :: x
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
TYPE(t1) x1

END SUBROUTINE
use m
call example

print *,'pass'
end

