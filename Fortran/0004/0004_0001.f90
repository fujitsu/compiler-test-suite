module m1
use iso_c_binding
use iso_fortran_env
use ieee_arithmetic
contains
pure function f(flag) result(r)
integer::r
logical,intent(in)::flag
r=0
if (flag) r=1
end function
subroutine s1(a,b)
integer:: a(:)
integer,allocatable:: b(:)
integer::a1(c_sizeof(a))
integer::a2(len(compiler_version()))
integer::a3(len(compiler_options()))
integer::a4( f(is_contiguous(a) ))
integer::a5( f(allocated(b) ))
integer::a6( f(ieee_support_datatype( 1.0) ))
if( size(a1)/=8) print *,101,size(a1)
if( size(a2)<=0) print *,102,size(a2)
if( size(a3)<=0) print *,103,size(a3)
if( size(a4)/=1) print *,104,size(a4)
if( size(a5)/=1) print *,105,size(a5)
if( size(a6)/=1) print *,106,size(a6)
end subroutine
subroutine s0
integer:: a(2)
integer,allocatable:: b(:)
allocate(b(2))
call s1(a,b)
end subroutine
end
use m1
call s0
print *,'pass'
end

