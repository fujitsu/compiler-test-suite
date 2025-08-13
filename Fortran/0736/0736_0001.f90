MODULE U
  INTEGER*4    STTIME,RECORD(128)
  EQUIVALENCE (STTIME,RECORD(2))
  contains

  SUBROUTINE FOO ()
  REAL*8       RVAL
  RVAL=3.5
  RECORD(2)=RVAL
  WRITE(2,*) RVAL,STTIME
  END SUBROUTINE
END MODULE

use u
real(8) a1
integer a2
CALL FOO()
rewind 2
read(2,*) a1,a2
if (abs(a1-3.5)>0.0001)write(6,*) "NG"
if (a2/=3)write(6,*) "NG"
print *,'pass'
END
