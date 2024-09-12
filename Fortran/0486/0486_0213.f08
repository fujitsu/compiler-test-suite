interface
subroutine zzz(k)
use, intrinsic :: ieee_arithmetic
integer,optional::k
end subroutine
end interface
m=1
n=2
call ttt()
call sss()
call www(n)
call yyy(m,n)
call zzz()
print *,'pass'
contains
subroutine sss(k)
use, intrinsic :: ieee_arithmetic
integer,optional::k
if (ieee_selected_real_kind(1,radix=k)/=4 .and. &
    ieee_selected_real_kind(1,radix=k)/=2) print *,101
end subroutine
end
subroutine ttt
use, intrinsic :: ieee_arithmetic
if (ieee_selected_real_kind(1        )/=4 .and. &
    ieee_selected_real_kind(1        )/=2) print *,102
end subroutine
subroutine www(n)
use, intrinsic :: ieee_arithmetic
nn=ieee_selected_real_kind(1,radix=n)
if (nn/=4 .and. nn/=2) print *,103,nn
end subroutine
subroutine yyy(m,n)
use, intrinsic :: ieee_arithmetic
nn=ieee_selected_real_kind(m,radix=n)
if (nn/=4.and. nn/=2) print *,104,nn
end subroutine
subroutine zzz(k)
use, intrinsic :: ieee_arithmetic
integer,optional::k
if (ieee_selected_real_kind(1,radix=k)/=4 .and. &
    ieee_selected_real_kind(1,radix=k)/=2) print *,105
end subroutine
