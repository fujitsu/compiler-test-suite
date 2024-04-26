PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9
character(len=3)::ch='yes'

ASSOCIATE(aa => iost,bb=>ch,xx=>'(3I4)',yy=>'NO') 
 WRITE (un, xx,advance=yy) num(1),num(2),num(3) 
 OPEN (UNIT = un, STATUS = 'OLD', PAD = 'YES')
 REWIND (un,iostat=aa)
 READ (un, '(3I4)',advance=bb) n1
END ASSOCIATE

IF(iost .EQ. 0 .and. n1==40) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,n1
END IF

END PROGRAM
