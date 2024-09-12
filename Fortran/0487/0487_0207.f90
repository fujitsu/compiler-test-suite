call sss(  )
print *,'pass'
contains
subroutine sss()
use, intrinsic :: ieee_arithmetic
parameter(n=ieee_selected_real_kind(1,radix=2))
parameter(n2=ieee_selected_real_kind(radix=2))
if (n /=4.and.n/=2) print *,101,n
if (n2 /=4.and.n2/=2) print *,102,n2
end subroutine
end
