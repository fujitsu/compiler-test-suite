module m1
contains
subroutine s(aa)
real(2),optional::aa
real(4)::a=1
real(8)::b=1
real(16)::c=1
if(cmplx(a,aa,kind=4)/=1) print *,101
if(cmplx(a,aa,kind=8)/=1) print *,102
if(cmplx(a,aa,kind=16)/=1) print *,103
end subroutine
end
use m1
call s()
print *,'pass'
end
