MODULE m
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL ::               finalize_t1v, finalize_t2e
END TYPE
integer:: f1=0,f2=0,f3=0
type tt
integer z(2)
TYPE(t) ::a,b(2),c(2,2)
TYPE(t) :: d(2,2,2)
end type
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
print *,'error'
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
f1=f1+1
END SUBROUTINE
SUBROUTINE finalize_t1v(x)
TYPE(t) x(:)
print *,'error'
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
use m
TYPE(t),save ::a,b(2),c(2,2),d(2,2,2)
type(tt),save:: var(2)
call ss(a,b,c,d,var)
print *,'pass'
end
subroutine su
use m
f3=f3+1
stop
end subroutine
subroutine ss(a,b,c,d,var)
use m
parameter(n=2)
TYPE(t) ::a,b(n),c(n,n),d(n,n,n)
type(tt):: var(n)
if (associated(a%vector)) print *,8001
if (associated(b(2)%vector)) print *,8002
if (associated(c(2,2)%vector)) print *,8003
if (associated(d(2,2,2)%vector)) print *,8004
if (associated(var(2)%a%vector)) print *,8011
if (associated(var(2)%b(2)%vector)) print *,8012
if (associated(var(2)%c(2,2)%vector)) print *,8013
if (associated(var(2)%d(2,2,2)%vector)) print *,8014
end
