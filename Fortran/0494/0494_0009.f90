module  m1
real(2),parameter::x(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
complex(2),parameter::z(3,3)=cmplx(x,x)
end
use m1
real(2)::a2(3,3)=x
complex(2)::c2(3,3)=z
write(1) ((x(k1,k2),k1=1,3),k2=1,3)
write(1) ((a2(k1,k2),k1=1,3),k2=1,3)
write(1) ((z(k1,k2),k1=1,3),k2=1,3)
write(1) ((c2(k1,k2),k1=1,3),k2=1,3)
call chk
print *,'pass'
end
subroutine chk
use m1
real(2)::a2(9)
complex(2)::c2(9)
rewind 1
read(1) a2
if (any(a2/=[x])) print *,1001,real(a2,4),real(x,4)
read(1) a2
if (any(a2/=[x])) print *,1002,real(a2,4),real(x,4)
read(1) c2
if (any(c2/=[z])) print *,1003,cmplx(c2),cmplx(z)
read(1) c2
if (any(c2/=[z])) print *,1003,cmplx(c2),cmplx(z)
end
