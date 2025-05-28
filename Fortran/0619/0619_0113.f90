#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-6)
module m1
implicit real(4)(a),real(8)(b),real(16)(d),complex(4)(e),complex(8)(f),complex(16)(g)
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
if (EQUAL_CHECK(sin(a1),a2)) print *,104,sin(a1),a2
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
implicit real(4)(a),real(8)(b),real(16)(d),complex(4)(e),complex(8)(f),complex(16)(g)
parameter (a02=sin(a01))
parameter (b02=sin(b01))
parameter (c02=sin(c01))
parameter (e02=sin(e01))
parameter (f02=sin(f01))
call s(a01,a02)
call s(b01,b02)
call s(c01,c02)
call s(e01,e02)
call s(f01,f02)
end
call s1
print *,'pass'
end
