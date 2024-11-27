MODULE test_overload
INTERFACE a
MODULE PROCEDURE a_1
MODULE PROCEDURE a_2
END INTERFACE
CONTAINS
SUBROUTINE a_1 (b, c)
INTEGER :: b
REAL, OPTIONAL, POINTER :: c(:,:)

b = 2
NULLIFY (c)

END SUBROUTINE a_1
SUBROUTINE a_2 (b, c)
INTEGER :: b
REAL, OPTIONAL, POINTER :: c(:,:,:)

b = 3
NULLIFY (c)

END SUBROUTINE a_2
END
use test_overload
INTEGER b2,b3
REAL, POINTER :: c2(:,:)
REAL, POINTER :: c3(:,:,:)
call a (b2,c2)
call a (b3,c3)
if (any((/b2,b3/)/=(/2,3/)))print *,'error1'
print *,'pass'
END
