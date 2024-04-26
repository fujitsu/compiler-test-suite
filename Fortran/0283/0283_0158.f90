PROGRAM main
IMPLICIT NONE

INTEGER :: num = 1
CHARACTER(LEN = 7) ::  ch = 'morning',ch1

ASSOCIATE(aa => num)
  OPEN(aa,FILE = 'sec.txt170')
  WRITE(aa,FMT = '(A7)') ch
  REWIND(aa)
  READ(aa,'(A7)')  ch1 
  WAIT(aa,END =  10)
  10 IF(ch1 .EQ. ch) PRINT*,'pass'
END ASSOCIATE

close (1,status='delete')
END PROGRAM
