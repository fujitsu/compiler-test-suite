PROGRAM main
IMPLICIT NONE

INTEGER :: num = 2

ASSOCIATE(bb => num)
  CALL sub(bb,*10,*20)
    10 print*,1
    20 print*,'pass'
END ASSOCIATE

CONTAINS

SUBROUTINE sub(n,*,*)
IMPLICIT NONE
INTEGER :: n
ASSOCIATE(bb => n)
  IF(bb == 2) THEN 
    RETURN bb
  ELSE 
    RETURN 1
  END IF 
END ASSOCIATE
END SUBROUTINE

END PROGRAM
