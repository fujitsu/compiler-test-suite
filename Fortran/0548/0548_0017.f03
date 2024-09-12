real(8) b
real(16) c
call s1()
call s1(1.0)
call s1(a)
call s2()
call s2(1.0d0)
call s2(b)
call s3()
call s3(1.0q0)
call s3(c)
print *,'pass'
contains
subroutine s1(x)
use, intrinsic :: ieee_arithmetic
real(4),optional::x
if(ieee_support_datatype(x).neqv..true._4) print *,'err1'
end subroutine

subroutine s2(x)
use, intrinsic :: ieee_arithmetic
real(8),optional::x
if(ieee_support_datatype(x).neqv..true._2) print *,'err2'
end subroutine

subroutine s3(x)
use, intrinsic :: ieee_arithmetic
real(16),optional::x
if(ieee_support_datatype(x).neqv..true._1) print *,'err3'
end subroutine
end
