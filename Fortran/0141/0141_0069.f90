module m1
use iso_c_binding
use iso_fortran_env
implicit none
contains
subroutine s1(a)
integer:: a(2)
character(*),parameter::a2=compiler_version()
character(*),parameter::a3=compiler_options()
real,parameter   ::a5 = atan2( 0.1 , 0.2) 
logical,parameter::a4= is_contiguous(a) 
integer::b1
character(3000)::b2
character(3000)::b3
logical::b4
real ::b5
b1=c_sizeof(a)
b2=compiler_version()
b3=compiler_options()
b4= is_contiguous(a) 
b5 = atan2( 0.1 , 0.2) 
if (8/=b1) print *,101
if (a2/=b2) print *,102
if (a3/=b3) print *,103
if (a4.neqv.b4) print *,143
if (abs(a5-b5) > 0.0001) print *,105
end subroutine
subroutine s0
integer:: a(2)
call s1(a)
end subroutine
end
use m1
call s0
print *,'pass'
end

