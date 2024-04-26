PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9
CHARACTER(len=5)::ft='(3I4)'

 WRITE (un, '(3I4)') num(1),num(2),num(3) 
ASSOCIATE(aa => iost,bb=>ft,cc=>'yes') 
 OPEN (UNIT = un, STATUS = 'OLD', PAD = cc)
 REWIND (un,iostat=aa)
 READ (un, bb,pad=cc) n1
END ASSOCIATE

IF(iost .EQ. 0 .and. n1==40) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,n1
END IF

END PROGRAM
