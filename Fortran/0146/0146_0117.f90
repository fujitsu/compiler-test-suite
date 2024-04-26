module m1
contains
 subroutine s1(a,b,c)
 complex(8),target:: a(3,3),b(3,3),c(3,3)
 a=a+matmul(b,c)
 end subroutine
end
use m1
 complex(8),target:: a(3,3),b(3,3),c(3,3)
 complex(8),parameter::p(3,3)=reshape([(k,k=1,9)],[3,3])
a=cmplx(real(p),real(p),8)
b=cmplx(real(p),real(p),8)
c=cmplx(real(p),real(p),8)
call s1(a,b,c)
if (any(abs([a]-[&
(1.,61.),(2.,74.),(3.,87.),(4.,136.),(5.,167.),(6.,198.),(7.,211.),(8.,260.),(9.,309.)&
])>0.0001)) print *,101,a
print *,'pass'
end

