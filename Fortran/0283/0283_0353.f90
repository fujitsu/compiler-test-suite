MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
  PROCEDURE(sub),POINTER,PASS(d1) :: proc_m => NULL()
END TYPE

CONTAINS

REAL FUNCTION sub(d1,d2)
IMPLICIT NONE
CLASS(t1),INTENT(IN) :: d1
REAL,INTENT(IN) ::d2
sub = d1%r + d2
END FUNCTION

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1) :: tt
tt%r = 3.0
tt%proc_m => sub

ASSOCIATE(aa => tt%proc_m(1.0) * tt%r)
  IF(aa .EQ. 12.0) THEN
   PRINT*,'pass'
  ELSE
   PRINT*,101
  END IF
END ASSOCIATE

END PROGRAM