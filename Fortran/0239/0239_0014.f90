MODULE m
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL :: finalize_t1s, finalize_t1v
END TYPE
integer:: f1=0,f2=0
type(t),pointer:: pa,pb(:),pc(:,:),pd(:,:)
TYPE(t),target,allocatable ::a,b(:),c(:,:)
TYPE(t),target,allocatable :: d(:,:)
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
IF (ASSOCIATED(x%vector)) DEALLOCATE(x%vector)
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
parameter(n=2)
allocate (a , b(10) , c(2,2) , d(2,2) , stat=kkk)
if (kkk/=0) print *,10001
pa=>a
pb=>b
pc=>c
pd=>d
allocate(a%vector(2))
do k=1,10
allocate(b(k)%vector(2))
end do
do k1=1,n
do k2=1,2
allocate(c(k1,k2)%vector(2))
end do
end do
do k1=1,n
do k2=1,n
allocate(d(k1,k2)%vector(2))
end do
end do
END SUBROUTINE
use m
n=2
call       example
deallocate (a , b , c , d , stat=kkk)
if (kkk/=0) print *,20001
if (f1/=1) print *,101,f1
if (f2/=1) print *,102,f2
if (associated(pa%vector)) print *,201
do k=1,10
if (associated(pb(k)%vector)) print *,202,k
end do
do k1=1,n
do k2=1,2
end do
end do
do k1=1,n
do k2=1,n
end do
end do
print *,'pass'
end
