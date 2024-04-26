PROGRAM main
IMPLICIT NONE

INTEGER :: n1,iost=9
CHARACTER(len=60)::iom='fail'

ASSOCIATE(aa => iom) 
 OPEN (UNIT = 1, PAD = 'YES',FILE = 'ABC054.DATA123')
 READ (1, '(3I4)',iostat=iost,iomsg = aa) n1
END ASSOCIATE

IF(iost .EQ. 0 ) THEN
  PRINT*,'101',n1
ELSE
  PRINT*,'Message Display: PASS: ',iom
END IF
close (1,status='delete')

END PROGRAM
