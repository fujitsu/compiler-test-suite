PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr = (/10,20,30,40,50/)
INTEGER :: num = 1

ASSOCIATE(aa => num)
  OPEN(num,FILE = 'sec.txt175',FORM = 'FORMATTED')
  WRITE(num,*) arr
  PRINT*,'pass'
END ASSOCIATE
close (1,status='delete')

END PROGRAM
