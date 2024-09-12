MODULE mod1
IMPLICIT NONE

Interface
SUBROUTINE m_asg(d1,d2)
  character(len = 2),intenT(OUT) :: d1
  INTEGER,INTENT(IN) :: d2
END SUBROUTINE
end interface
END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

INTERFACE ASSIGNMENT ( = )
  PROCEDURE m_asg 
END INTERFACE

INTEGER :: xx 
character(len = 2)::ch
xx = 2
ch = xx

IF(ch .EQ. 'ab') THEN
  PRINT*,"PASS"
ELSE
  PRINT*,"ERROR"
END IF

END PROGRAM

SUBROUTINE m_asg(d1,d2)
  character(len = 2),intenT(OUT) :: d1
  INTEGER,INTENT(IN) :: d2
  d1 = 'ab'
  print*,d2
END SUBROUTINE

