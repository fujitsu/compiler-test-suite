#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-6)
module m1
implicit real(4)(a),real(8)(b),real(16)(c),complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a01=0.1)
parameter (b01=0.1)
parameter (c01=0.1)
parameter (d01=(0.1,0.1))
parameter (e01=(0.1,0.1))
parameter (f01=(0.1,0.1))
interface s
module procedure ta,tb,tc,td,te,tf 
end interface
contains
subroutine ta(a1,a2)
implicit real(4)(a),real(8)(b),real(16)(d),complex(4)(e),complex(8)(f),complex(16)(g)
if (a2/=sin(a1))print *,101
end subroutine
subroutine tb(a1,a2)
implicit real(4)(x),real(8)(a),real(16)(d),complex(4)(e),complex(8)(f),complex(16)(g)
if (a2/=sin(a1))print *,102
end subroutine
subroutine tc(a1,a2)
implicit real(4)(x),real(8)(b),real(16)(a),complex(4)(e),complex(8)(f),complex(16)(g)
if (a2/=sin(a1))print *,103
end subroutine
subroutine td(a1,a2)
implicit real(4)(x),real(8)(b),real(16)(d),complex(4)(a),complex(8)(f),complex(16)(g)
if (EQUAL_CHECK(a2, sin(a1)))print *,104
end subroutine
subroutine te(a1,a2)
implicit real(4)(x),real(8)(b),real(16)(d),complex(4)(e),complex(8)(a),complex(16)(g)
if (a2/=sin(a1))print *,105
end subroutine
subroutine tf(a1,a2)
implicit real(4)(x),real(8)(b),real(16)(d),complex(4)(e),complex(8)(f),complex(16)(a)
if (a2/=sin(a1))print *,106
end subroutine
end
subroutine s1
use m1
implicit real(4)(a),real(8)(b),real(16)(c),complex(4)(d),complex(8)(e),complex(16)(f)
parameter (a02=sin(a01))
parameter (b02=sin(b01))
parameter (d02=sin(d01))
parameter (e02=sin(e01))
parameter (k01=kind(sin(a01)))
parameter (k02=kind(sin(b01)))
parameter (k03=kind(sin(d01)))
parameter (k04=kind(sin(e01)))
if (k01/=4)print *,1001
if (k02/=8)print *,1002
if (k03/=4)print *,1003
if (k04/=8)print *,1004
call s(a01,a02)
call s(b01,b02)
call s(d01,d02)
call s(e01,e02)
end
call s1
print *,'pass'
end
