module m0
real(16)::r16
complex(4)::c8
complex(8)::c16
complex(16)::c32
type x1
  real(8) ::x1(2)
end type
type(x1)::t1
type y1
  real(8) ::y1(3)
end type
type(y1)::t2
type,bind(c):: x2
  real(8) ::x1(2)
end type

type,bind(c):: y2
  real(8) ::y1(3)
end type

end
module m1
use m0
interface
subroutine s1(r16,c8,c16,c32,d1,d2)
use m0,only:x1,y1
real(16),value::r16
complex(4),value::c8
complex(8),value::c16
complex(16),value::c32
type(x1),value::d1
type(y1),value::d2
end subroutine
end interface
end
use m1

r16=1.2
c8=(2.3,4.5)
c16=(6.7,8.9)
c32=(1.2,2.3)
t1%x1=1.2
t2%y1=3.4

call s1(r16,c8,c16,c32,t1,t2)

print *,'pass'
end
 
subroutine s1(r16,c8,c16,c32,d1,d2)
use m1,only:x1,y1
real(16),value::r16
complex(4),value::c8
complex(8),value::c16
complex(16),value::c32
type(x1),value::d1
type(y1),value::d2
if (abs(r16-1.2)>0.0001)print *,'fail'
if (abs(c8-(2.3,4.5))>0.0001)print *,'fail'
if (abs(c16-(6.7,8.9))>0.0001)print *,'fail'
if (abs(c32-(1.2,2.3))>0.0001)print *,'fail'
if (any(abs(d1%x1-1.2)>0.0001))print *,'fail'
if (any(abs(d2%y1-3.4)>0.0001))print *,'fail'
r16=r16+1
c8=c8+(1,1)
c16=c16+(1,1)
c32=c32+(1,1)
d1%x1=d1%x1+1
d2%y1=d2%y1+1
if (abs(r16-1.2-1)>0.0001)print *,'fail'
if (abs(c8-(2.3,4.5)-(1,1))>0.0001)print *,'fail'
if (abs(c16-(6.7,8.9)-(1,1))>0.0001)print *,'fail'
if (abs(c32-(1.2,2.3)-(1,1))>0.0001)print *,'fail'
if (any(abs(d1%x1-1.2-1)>0.0001))print *,'fail'
if (any(abs(d2%y1-3.4-1)>0.0001))print *,'fail'
end subroutine
