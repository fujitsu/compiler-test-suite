module m1
contains
 subroutine s1(a,b,c,d,e,k3)
 real(8)       :: a(k3,3)
 real(8)        ::        b(k3,3)
 real(8)        ::        c(k3,3)
 real(8)       ::               d(k3,3)
 real(8),target       ::               e
 a=e*a+  matmul(b     ,c(:,:))
 end subroutine
end
use m1
 real(8),target:: a(3,3),b(3,3),c(3,3),d(3,3),e(3,3),aa(3,3)
 real(8),parameter::p(3,3)=reshape([(k,k=1,9)],[3,3])
a=p
aa=p
b=p
c=p
d=p
e=p
call s1(aa,b,c,d,a(1,1),3)
if (any(abs([aa]-[&
 31.,38.,45.,70.,86.,102., 109.,134.,159.])>0.0001)) print *,101,a
print *,'pass'
end

