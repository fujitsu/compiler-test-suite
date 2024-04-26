MODULE m
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL :: finalize_t1s, finalize_t1v
END TYPE
integer:: f1=0,f2=0
TYPE(t),pointer     ::a,b(:),c(:,:)
TYPE(t),pointer     :: d(:,:)
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
END MODULE
SUBROUTINE example
USE m
allocate (a , b(10) , c(2,2) , d(2,2) , stat=kkk)
if (kkk/=0) print *,10001
END SUBROUTINE
use m
call       example
deallocate (a , b , c , d , stat=kkk)
if (kkk/=0) print *,20001
if (f1/=1) print *,101,f1
if (f2/=1) print *,102,f2
print *,'pass'
end
