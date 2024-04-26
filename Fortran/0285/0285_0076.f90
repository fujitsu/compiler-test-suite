PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9

ASSOCIATE(aa => un,bb=>'null') 
 WRITE (aa, '(3I4)') num(1),num(2),num(3) 
 OPEN (UNIT = aa, STATUS = 'OLD', PAD = 'YES')
 REWIND (aa,iostat=iost)
 READ (aa, '(3I4)',blank=bb) n1
END ASSOCIATE

IF(iost .EQ. 0 .and. n1==40) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,n1
END IF

END PROGRAM
