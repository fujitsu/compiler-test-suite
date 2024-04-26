use, intrinsic :: ieee_arithmetic
real(16)::a(2)
call s()
call s([1.0q0])
call s(a)
print *,'pass'
contains
subroutine s(x)
real(16),optional,dimension(:)::x
if(ieee_support_io(x).neqv..true._4) print *,'err'
end subroutine
end
