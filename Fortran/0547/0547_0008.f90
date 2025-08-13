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
USE m
allocate (var )
 var%a%v=1
 var%c%v=[2,3]
deallocate (var )
rewind 2
read(2,*) k;if (k/=1) print *,101
read(2,*) k;if (k/=2) print *,102
read(2,*) k;if (k/=3) print *,103
print *,'pass'
end
subroutine su(v)
use m
integer,intent(in)::v
write(2,*)v
f3=f3+1
end subroutine
