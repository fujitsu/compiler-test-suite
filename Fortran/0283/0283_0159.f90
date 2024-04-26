PROGRAM main
IMPLICIT NONE

LOGICAL :: p

ASSOCIATE(aa => p)
  OPEN(2,FILE = 'sec.txt171')
  WRITE(2,*) 'hello'
  INQUIRE(2,EXIST = p)
END ASSOCIATE

IF(p) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF
close (2,status='delete')

END PROGRAM
