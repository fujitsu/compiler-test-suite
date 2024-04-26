MODULE mod1
IMPLICIT NONE

TYPE ty
  REAL :: rr
  INTEGER :: nn
  COMPLEX :: cmp
  CHARACTER(LEN = 10) :: ch
  CHARACTER(LEN = 6) :: ch2='x'
  LOGICAL :: l1 
END TYPE

INTERFACE OPERATOR(.plus.)
  MODULE PROCEDURE addit
END INTERFACE

CONTAINS

FUNCTION addit(d1,d2)
IMPLICIT NONE
TYPE(ty),INTENT(IN) :: d1,d2
TYPE(ty) :: addit
addit%rr = d1%rr + d2%rr
addit%nn = d1%nn + d2%nn
addit%cmp = d1%cmp + d2%cmp
addit%ch = TRIM(d1%ch) // TRIM(d2%ch)
addit%l1 = d1%l1 .AND. d2%l1
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(ty) :: obj
obj%rr = 11.10
obj%nn = 11
obj%cmp = (3.0,4.0)
obj%ch = 'xxxxx'
obj%l1 = .false.

ASSOCIATE(aa => ty(12.90,15,(1.0,2.0),'aaaaa','x',.true.))
  ASSOCIATE(bb => aa .plus. obj)
    IF(AIMAG(bb%cmp) .EQ. 6.0) PRINT*,'pass'
  END ASSOCIATE
END ASSOCIATE

END PROGRAM
