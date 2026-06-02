module m1
 complex c
 data c%re/1/
 data c%im/2/
contains
subroutine s1
if (abs(c-(1,2)) > 0.0001) print *,201
end subroutine
end
subroutine s2
use m1
common /cmn/ cc
 complex cc
if (abs(c-(1,2)) > 0.0001) print *,101
if (abs(cc-(1,2)) > 0.0001) print *,111
end
use m1
call s1
call s2
if (abs(c-(1,2)) > 0.0001) print *,102
print *,'pass'
end
block data
 complex c
 data c%re/1/
 data c%im/2/
 common /cmn/ c
end
