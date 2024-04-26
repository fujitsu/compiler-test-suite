MODULE m
TYPE y
REAL(8),POINTER :: vector(:) => NULL()
CONTAINS
private
FINAL :: finalize_y1s
END TYPE
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
private
FINAL :: finalize_t1s
END TYPE
integer:: f1=0,f2=0,f3=0
type,extends(y):: tt
integer z(2)
TYPE(t) ::a
end type
type(tt),allocatable:: var
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
f1=f1+1
f3=10
END SUBROUTINE
SUBROUTINE finalize_y1s(x)
TYPE(y) x
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
f2=f2+1
f3=20
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
allocate (var , stat=kkk)
if (kkk/=0) print *,10001
END SUBROUTINE
use m
call       example
deallocate (var , stat=kkk)
if (kkk/=0) print *,20001
if (f1/=1) print *,101,f1
if (f2/=1) print *,102,f2
if (f3/=20) print *,103,f3
print *,'pass'
end
subroutine su
use m
f3=f3+1
end subroutine
