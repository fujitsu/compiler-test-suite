use, intrinsic :: ieee_arithmetic
real(4)::a(2)
real(8)::b(2)
real(16)::c(2)
call s1()
call s1([1.0])
call s1(a)
call s2()
call s2([1.0d0])
call s2(b)
call s3()
call s3([1.0q0])
call s3(c)
print *,'pass'
contains
subroutine s1(x)
real(4),optional,dimension(:)::x
if(ieee_support_datatype(x).neqv..true._4) print *,'err1'
end subroutine
subroutine s2(x)
real(8),optional,dimension(:)::x
if(ieee_support_datatype(x).neqv..true._4) print *,'err2'
end subroutine
subroutine s3(x)
real(16),optional,dimension(:)::x
if(ieee_support_datatype(x).neqv..true._4) print *,'err3'
end subroutine
end
