MODULE m
TYPE t
integer :: v
CONTAINS
FINAL ::               finalize_t1v, finalize_t2e
END TYPE
integer:: f1=0,f2=0,f3=0
type tt
integer z(2)
TYPE(t) ::a,b(2),c(2,2)
TYPE(t) :: d(2,2,2)
end type
class(tt),allocatable:: var(:,:,:)
CONTAINS
SUBROUTINE finalize_t1s(x)
TYPE(t) x
f1=f1+1
END SUBROUTINE
SUBROUTINE finalize_t1v(x)
TYPE(t) x(:)
f2=f2+1
END SUBROUTINE
ELEMENTAL SUBROUTINE finalize_t2e(x)
TYPE(t),INTENT(INOUT) :: x
interface
pure subroutine su(v)
integer,intent(in)::v
end subroutine
end interface
call su(x%v)
END SUBROUTINE
END MODULE
SUBROUTINE example
USE m
allocate (var(1,1,1) )
do k3=1,1
do k2=1,1
do k1=1,1
 var(k1,k2,k3)%a%v=1
 var(k1,k2,k3)%b%v=[2,3]
 var(k1,k2,k3)%c%v=reshape([4,5,6,7],[2,2])
 var(k1,k2,k3)%d%v=reshape([9,10,11,12,13,14,15,16],[2,2,2])
end do
end do
end do
END SUBROUTINE
use m
call       example
deallocate (var )
if (f1/=0      ) print *,101,f1
if (f2/=1) print *,102,f2
if (f3/=13 ) print *,103,f3
print *,'pass'
end
subroutine su(v)
use m
integer,intent(in)::v
f3=f3+1
end subroutine
