module mod
contains
 elemental function f(a)
 real(8),intent(in)::a
 real(8)::f
 f=a+1
 end function
end
use mod
 real(8)::a1(8),a2(8)
 real(8),parameter::a0(8)=[(k,k=1,8)]
 a1=a0
 a2=f(a1)
 if (any(abs(a2-a0-1)>0.0001))print *,101
 print *,'pass'
 end
