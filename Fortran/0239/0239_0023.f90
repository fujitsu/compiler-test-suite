MODULE m
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL ::               finalize_t1v, finalize_t2e
END TYPE
integer:: f1=0,f2=0,f3=0
type tt
integer z(2)
TYPE(t),pointer     ::a,b(:),c(:,:)
TYPE(t),pointer     :: d(:,:,:)
end type
type(tt),allocatable:: var(:,:,:)
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
f1=f1+1
END SUBROUTINE
SUBROUTINE finalize_t1v(x)
TYPE(t) x(:)
DO i=LBOUND(x,1),UBOUND(x,1)
IF (ASSOCIATED(x(i)%vector)) DEALLOCATE(x(i)%vector)
END DO
f2=f2+1
END SUBROUTINE
ELEMENTAL SUBROUTINE finalize_t2e(x)
TYPE(t),INTENT(INOUT) :: x
interface
pure subroutine su
end subroutine
end interface
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
call su 
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
allocate (var(4,3,2) , stat=kkk)
if (kkk/=0) print *,10001
END SUBROUTINE
use m
call       example
deallocate (var , stat=kkk)
if (kkk/=0) print *,20001
if (f1/=0) print *,101,f1
if (f2/=0) print *,102,f2
if (f3/=0) print *,103,f3
print *,'pass'
end
subroutine su
use m
f3=f3+1
end subroutine
