PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9
character(len=70) :: iom

ASSOCIATE(aa => un) 
 OPEN (UNIT = aa, file='ABC052.DATA131', PAD = 'YES')
 WRITE (aa, '(3I4)') num(1),num(2),num(3) 
 CLOSE(aa)

 OPEN (UNIT = aa, file='ABC052.DATA131', PAD = 'YES')

 ENDFILE aa
 READ (aa, '(3I4)',iostat=iost,iomsg=iom) n1
END ASSOCIATE

IF(iost/=0) THEN
  PRINT*,'PASS with endfile message:',iom
ELSE
  PRINT*,101,n1
END IF
close (1,status='delete')

END PROGRAM
