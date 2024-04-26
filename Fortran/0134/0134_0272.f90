module m1
contains
subroutine chk(u,z,k)
optional::z
if (present(z)) then
  if (k/=1)print *,1001
  if (abs(u-z(0.1))>0.001)print *,u-z(0.1),1002
else
  if (k/=0)print *,2001
endif
end subroutine
end
subroutine s1
use m1
procedure(cos),pointer::p
intrinsic tan
real(16)::a1(3,3),b1(3,3)
a=sin(0.1)
p=>cos
b=p(0.1)
call ss(tan)
call chk(a,sin,1)
call chk(b,cos,1)
call chk(0.0,k=0)
a1=reshape([(i,i=1,9)],[3,3])
b1=reshape([(i+i,i=1,9)],[3,3])
if (any(abs([matmul(a1,b1)]-[60.0,72.0,84.0,132.,162.,192.,204.,252.,300.])>0.0001))print *,3001

end
subroutine ss(x)
use m1
intrinsic tan
call chk(x(.1),tan,1)
end
call s1
print *,'pass'
end
