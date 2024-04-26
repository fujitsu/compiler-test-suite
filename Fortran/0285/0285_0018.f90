PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9,ios=9

 WRITE (un, '(3I4)') num(1),num(2),num(3) 
 OPEN (UNIT = un, STATUS = 'OLD', PAD = 'YES')
ASSOCIATE(aa => iost,bb=>ios) 
 REWIND (un,iostat=aa)
 READ (un, '(3I4)') n1
 CLOSE(aa,iostat=bb,status='delete')
END ASSOCIATE

IF(iost .EQ. 0 .and. n1==40 .and. ios == 0) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,n1
END IF

END PROGRAM
