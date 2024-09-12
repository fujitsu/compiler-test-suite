MODULE m
TYPE t
integer :: v
CONTAINS
FINAL ::               finalize_t2e
END TYPE
integer:: f1=0,f2=0,f3=0
type tt
   TYPE(t) ::a,c(2)
end type
class(tt),allocatable:: var
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
allocate (var )
 var%a%v=1
 var%c%v=[2,3]
END SUBROUTINE
use m
call       example
deallocate (var )

if (f3/=3) print *,103,f3
print *,'pass'
end
subroutine su(v)
use m
integer,intent(in)::v
f3=f3+1
end subroutine
