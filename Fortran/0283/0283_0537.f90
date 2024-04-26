MODULE mod1
IMPLICIT NONE

TYPE ty1
  INTEGER :: rr1
  PROCEDURE(sub1),POINTER,NOPASS :: proc
END TYPE

CONTAINS

SUBROUTINE sub1(a,b)
TYPE(ty1),INTENT(IN) :: a
INTEGER :: b
b = b + a%rr1
END SUBROUTINE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTEGER :: xx = 5
TYPE(ty1) :: obj

ASSOCIATE(aa => 10 , bb => obj , cc => xx)
  bb%rr1 = 20
  bb%proc => sub1
  CALL bb%proc(bb,cc)
  DO WHILE(cc .GT. aa)
    cc = cc - 5
  END DO
  SELECT CASE(aa)
    CASE (10)
    cc = cc + 2
  END SELECT    
END ASSOCIATE

IF(xx .EQ. 12) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
