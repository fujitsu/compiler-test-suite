MODULE m
TYPE t
integer :: v
CONTAINS
FINAL ::               finalize_t2e
END TYPE
integer:: f1=0,f2=0,f3=0
type tt
integer z(2)
TYPE(t) ::a,c(2)
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
allocate (var(4,3,2) )
do k3=1,2
do k2=1,3
do k1=1,4
 var(k1,k2,k3)%a%v=1
 var(k1,k2,k3)%c%v=[2,3]
end do
end do
end do
END SUBROUTINE
use m
call       example
deallocate (var )
print *,'pass'
end
subroutine su(v)
use m
integer,intent(in)::v
f3=f3+1
end subroutine
