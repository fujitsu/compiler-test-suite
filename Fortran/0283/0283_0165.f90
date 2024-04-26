PROGRAM main
IMPLICIT NONE

CHARACTER(LEN=4) :: ch = 'good'

ASSOCIATE(aa => ch)
  OPEN(1,FILE = 'sec.txt177')
  WRITE(1,FMT = '(A4)') aa
  PRINT*,'pass'
END ASSOCIATE
close (1,status='delete')

END PROGRAM
