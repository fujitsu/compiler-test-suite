#if defined(sparc)
use service_routines,only:dvchk
integer :: i0, i1, i2
real :: f = 0.0
call dvchk(i0)
call sub(f)
call dvchk(i1)
call dvchk(i2)
#endif
print *,'pass'
end
subroutine sub(zero)
real, intent(inout) :: zero
zero = 1.0 / zero
end
