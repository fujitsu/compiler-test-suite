PROGRAM main
IMPLICIT NONE

INTEGER :: i
CHARACTER(LEN = 7) ::  ch = 'morning',ch1

DO 10 CONCURRENT(i=1:5,i==1)
  OPEN(i,FILE = 'abc2.txt')
  WRITE(i,FMT = '(A7)') ch
  REWIND(i)
  READ(i,'(A7)')  ch1
  WAIT(i,END =  10)
  IF(ch1 .EQ. ch) PRINT*,'PASS'
  CLOSE(i,STATUS='delete')
10 END DO

END PROGRAM
