MODULE m
  TYPE t1
    REAL,POINTER :: vec(:)
    logical :: finalized
  CONTAINS
    FINAL f1
  END TYPE
CONTAINS
  SUBROUTINE f1(x)
    TYPE(t1),INTENT(INOUT) :: x
    write(1,*) 100
  END SUBROUTINE
  SUBROUTINE zap1(z1)
    TYPE(t1),INTENT(OUT) :: z1
  END SUBROUTINE
END MODULE

use m
TYPE(t1) a
    write(1,*) 1
CALL zap1(a)   
rewind 1
read(1,*) k
if (k/=1) print *,900
read(1,*) k
if (k/=100) print *,901
print *,'pass'
end

  SUBROUTINE zap2(z1)
use m
    TYPE(t1),INTENT(OUT) :: z1
    z1%vec=1
  END SUBROUTINE
