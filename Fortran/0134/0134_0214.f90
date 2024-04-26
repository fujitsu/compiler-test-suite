module m1
real(8)::a(3,3)=1.,c(3,3)
real(8)::b(3,3)=2.
real(8)::add(3,3)
end
subroutine s
use m1
c=3;add=4
c=      matmul(a,b)+c
if (any(abs(c-9)>0.0001))print *,101,c
c=      matmul(a,b)+add
if (any(abs(c-10)>0.0001))print *,101,c
c=      matmul(a,b)+matmul(a,b)
if (any(abs(c-12)>0.0001))print *,101,c
c=3;add=4
c=      2*matmul(a,b)+c
if (any(abs(c-15)>0.0001))print *,101,c
c=3;add=4
c=        matmul(a,b)+4*c
if (any(abs(c-18)>0.0001))print *,101,c
c=3;add=4
c=      matmul(a,b)-c
if (any(abs(c-3)>0.0001))print *,101,c
c=3;add=4;i=2
c=      i*matmul(a,b)+c
if (any(abs(c-15)>0.0001))print *,101,c
c=3;add=4;i=2
c=      i*matmul(a,b)-c
if (any(abs(c-9)>0.0001))print *,101,c
c=3;add=4
c=        matmul(a,b)-4*c
if (any(abs(c+6)>0.0001))print *,101,c
c=3;add=4;i=2
c=      i*matmul(a,b)
if (any(abs(c-12)>0.0001))print *,101,c
end
call s
print *,'pass'
end
