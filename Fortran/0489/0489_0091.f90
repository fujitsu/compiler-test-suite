interface
subroutine zzz(k)
use, intrinsic :: ieee_arithmetic
integer,optional::k
end subroutine
end interface
call sss()
print *,'pass'
contains
subroutine sss(k,z)
use, intrinsic :: ieee_arithmetic
integer,optional::k
logical,optional::z
if (ieee_selected_real_kind(1,radix=k)/=4 .and.  ieee_selected_real_kind(1,radix=k)/=2) print *,101
end subroutine
end
