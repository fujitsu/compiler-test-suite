module m1
contains
 subroutine s1(a,b,c,d,k3)
 real(8),target:: a(k3,k3)
 real(8),target ::        b(k3,k3)
 real(8),target::               c(k3,k3)
 real(8),target ::        d(k3,k3)
 a=a+matmul(b,c)+d
 end subroutine
end
use m1
 real(8),target:: a(3,3),b(3,3),c(3,3),d(3,3)
 real(8),parameter::p(3,3)=reshape([(k,k=1,9)],[3,3])
a=p
b=p
c=p
d=p
call s1(a,a,a,a,3)
if (any(abs([a]-[c]-[&
 31.,38.,45.,70.,86.,102., 109.,134.,159.])>0.0001)) print *,101,a
print *,'pass'
end

