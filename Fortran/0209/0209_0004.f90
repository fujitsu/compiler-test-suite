module m1
contains
subroutine s(aa,bb,cc,dd)
real(2)::a=1,aa
real(4)::bb
real(8)::cc
real(16)::dd
optional::aa,bb,cc,dd
if(cmplx(a,aa,kind=2)/=1)print *,101
if(cmplx(a,bb,kind=2)/=1)print *,102
if(cmplx(a,cc,kind=2)/=1)print *,103
if(cmplx(a,dd,kind=2)/=1)print *,104
end subroutine
end
use m1
call s()
print *,'pass'
end
