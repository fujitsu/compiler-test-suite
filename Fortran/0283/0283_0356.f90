MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
  PROCEDURE(sub),POINTER,PASS(d1) :: proc_m => NULL()
END TYPE

INTERFACE OPERATOR( * )
  MODULE PROCEDURE multip
END INTERFACE

CONTAINS

FUNCTION multip ( d1,d2)
IMPLICIT NONE
TYPE(t1),INTENT(IN) :: d1
REAL,INTENT(IN) :: d2
TYPE(t1) :: multip
multip%r = d1%r * d2
END FUNCTION

TYPE(t1) FUNCTION sub(d1,d2)
IMPLICIT NONE
CLASS(t1),INTENT(IN) :: d1
REAL,INTENT(IN) ::d2
sub%r = d1%r + d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1) :: tt
tt%r = 3.0
tt%proc_m => sub

ASSOCIATE(aa => tt%proc_m(1.0) * 2.0)
  IF(aa%r .EQ. 8.0) THEN
   PRINT*,'pass'
  ELSE
   PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM
