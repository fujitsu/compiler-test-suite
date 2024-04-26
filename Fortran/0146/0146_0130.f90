module m1
contains
 subroutine s1(a,b,c,d,e,k3)
 complex(8),target:: a(k3,3)
 complex(8)        ::        b(k3,3)
 complex(8)        ::        c(k3,3)
 complex(8)       ::               d(k3,3)
 complex(8),target       ::               e(3,3)
 a=e(3,3)*a+  matmul(b     ,c(:,:))
 end subroutine
end
use m1
 complex(8),target:: a(3,3),b(3,3),c(3,3),d(3,3),e(3,3)
 complex(8),parameter::p(3,3)=reshape([(cmplx(k,k),k=1,9)],[3,3])
a=p
b=p
c=p
d=p
e=p
call s1(a,b,c,d,a,3)
if (any(abs([a]-[&
(0.00E+00,78.0),(0.00E+00,108.),(0.00E+00,138.),(0.00E+00,204.),(0.00E+00,252.),(0.00E+00,300.),(0.00E+00,330.),(0.00E+00,396.),(0.00E+00,462.)&
])>0.0001)) print *,101,a
print *,'pass'
end

