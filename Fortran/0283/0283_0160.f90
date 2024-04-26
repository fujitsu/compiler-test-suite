PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/10,20,30/)
INTEGER :: un  = 1,n1

ASSOCIATE(aa => un) 
 WRITE (aa, '(3I4)') num(1),num(2),num(3) 
 OPEN (UNIT = aa, STATUS = 'OLD', PAD = 'YES')
 REWIND aa
 READ (aa, '(3I4)') n1
END ASSOCIATE

IF(n1 .EQ. 10) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
