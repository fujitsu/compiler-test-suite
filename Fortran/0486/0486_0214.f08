call sss()
print *,'pass'
contains
subroutine sss(k)
use, intrinsic :: ieee_arithmetic
integer,optional::k
n=ieee_selected_real_kind(1,radix=k)
if (n /=4.and.n /=2) print *,101,n
end subroutine
end
