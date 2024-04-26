call s
print *,'pass'
end
subroutine s
#if defined(sparc)
use service_routines,only:overfl
integer :: i0, i1, i2
real :: huge_real = huge(f)
real :: tiny_real = tiny(f)
call overfl(i0)
call sub_overflow(huge_real)
call overfl(i1)
call overfl(i1)
call sub_underflow(tiny_real)
call overfl(i2)
#endif
end
subroutine sub_overflow(huge_real)
real, intent(inout) :: huge_real
huge_real = huge_real * 2.0
end
subroutine sub_underflow(tiny_real)
real, intent(inout) :: tiny_real
tiny_real = tiny_real / 1.0e+08
end
