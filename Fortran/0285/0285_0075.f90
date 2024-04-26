PROGRAM main
IMPLICIT NONE

INTEGER,DIMENSION(3) :: num = (/40,20,30/)
INTEGER :: un  = 1,n1,iost=9,countn=99,n2
character(len=3)::ch='no'

 WRITE (un, '(3I4)') num(1),num(2),num(3) 
 OPEN (UNIT = un, STATUS = 'OLD', PAD = 'YES')
ASSOCIATE(aa => iost,bb=>ch,cc=>countn) 
 REWIND (un,iostat=aa)
 READ (un, '(3I4)',advance=bb,size=cc) n1, n2
END ASSOCIATE

IF(iost .EQ. 0 .and. n1==40 .and. countn==8 .and. n2 == 20) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101,n1
END IF

END PROGRAM
