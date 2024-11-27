MODULE test

TYPE a
   INTEGER i
END TYPE a
TYPE a_ptr
   TYPE(a), POINTER :: p
END TYPE a_ptr

TYPE b
   REAL r
END TYPE b
TYPE b_ptr
   TYPE(b), POINTER :: p
END TYPE b_ptr

CONTAINS
SUBROUTINE sub(a,b)

IMPLICIT NONE
TYPE(a_ptr) a
TYPE(b_ptr) b

b = TRANSFER(a,b)

RETURN
END SUBROUTINE sub

END MODULE test
PROGRAM MAIN

USE test, ONLY : a_ptr,b_ptr
USE test, ONLY : sub

IMPLICIT NONE
TYPE(a_ptr) x
TYPE(b_ptr) y

ALLOCATE(x%p)
ALLOCATE(y%p)
x%p%i = 5

CALL SUB(x,y)

write(1,*)'y= ',y%p

print *,'pass'
END PROGRAM MAIN
