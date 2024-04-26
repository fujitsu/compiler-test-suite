module m1
contains
 subroutine s1(a,b,c,d,e,k3)
 real(8),target:: a(k3,3)
 real(8)        ::        b(k3,3)
 real(8)        ::        c(k3,3)
 real(8)       ::               d(k3,3)
 real(8),target       ::               e
 a=e*a+  matmul(b     ,c(:,:))
 end subroutine
end
use m1
 real(8),target:: a(3,3),b(3,3),c(3,3),d(3,3),e(3,3)
 real(8),parameter::p(3,3)=reshape([(k,k=1,9)],[3,3])
a=p
b=p
c=p
d=p
e=p
call s1(a,b,c,d,a(3,3),3)
if (any(abs([a]-[&
39., 54., 69., 102., 126., 150., 165., 198., 231. &
])>0.0001)) print *,101,a
print *,'pass'
end

