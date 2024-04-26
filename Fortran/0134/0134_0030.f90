module m1
common /cmn/ k1
end
subroutine s1
use m1
integer cmn
cmn=1
if (k1/=2)print *,101,k1
if (cmn/=1)print *,102,cmn
end
block data
common /cmn/k1
data k1/2/
end
call s1
print *,'pass'
end

