module m1
integer,parameter::n1=sizeof(x=1)
integer,parameter::n2=kind(sizeof(x=1))
contains
function f(x,k) result(r)
integer(2) x(k)
integer(2) r(sizeof(x=x))
r=(/1,2,3,4,5,6/)
if (n1/=4)print *,"fail"
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
if (n2/=8)print *,"fail"
#else
if (n2/=4)print *,"fail"
#endif
end function
end
use m1
integer(2) x(3)
x=(/1,2,3/)
if (any(f(x,3)/=(/1,2,3,4,5,6/)))print *,"fail"
if (any(shape(f(x,3))/=6))print *,"fail"
call s(f(x,3))
if (n1/=4)print *,"fail"
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
if (n2/=8)print *,"fail"
#else
if (n2/=4)print *,"fail"
#endif
print *,'pass'
end
subroutine s(x)
integer(2) x(6)
if (any(x/=(/1,2,3,4,5,6/)))print *,"fail"
end
