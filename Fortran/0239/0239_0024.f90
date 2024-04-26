MODULE m
TYPE t
REAL(4),POINTER :: vector(:) => NULL()
CONTAINS
FINAL ::  finalize_t1v
END TYPE
type tt
integer z(2)
TYPE(t),allocatable ::  b(:)
end type
type(tt),allocatable:: var
CONTAINS
SUBROUTINE finalize_t1v(x)
TYPE(t) x(:)
END SUBROUTINE
END MODULE
subroutine s1
use m
deallocate (var )
end
print *,'pass'
end
subroutine su
use m
f3=f3+1
end subroutine
