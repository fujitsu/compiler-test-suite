module m1
 complex c(3)
 data c(1:3)%re/3*1/
 data c(1:3)%im/3*2/
contains
subroutine s1
if (any(abs(c-(1,2)) > 0.0001)) print *,201
end subroutine
end
subroutine s2
use m1
common /cmn/ cc(3)
 complex cc
if (any(abs(c-(1,2)) > 0.0001)) print *,101
if (any(abs(cc-(1,2)) > 0.0001)) print *,111
end
use m1
call s1
call s2
if (any(abs(c-(1,2)) > 0.0001)) print *,102
print *,'pass'
end
block data
 complex c(3)
 data c(1:3)%re/3*1/
 data c(1:3)%im/3*2/
 common /cmn/ c
end
