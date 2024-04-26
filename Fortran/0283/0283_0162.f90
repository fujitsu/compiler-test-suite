PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr = (/10,20,30,40,50/)
INTEGER :: num = 1

ASSOCIATE(aa => num)
  OPEN(aa,FILE = 'sec.txt174',FORM = 'FORMATTED')
  WRITE(aa,*) arr(3)
  CLOSE(aa,status='delete')
  PRINT*,'pass'
END ASSOCIATE

END PROGRAM
