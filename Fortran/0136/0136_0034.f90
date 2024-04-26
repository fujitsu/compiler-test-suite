use, intrinsic :: ieee_arithmetic
call s()
call s(1.0)
call s(a)
print *,'pass'
contains
subroutine s(x)
real(4),optional::x
if(ieee_support_io(x).neqv..true._4) print *,'err'
end subroutine
end
