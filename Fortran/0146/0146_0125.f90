module m1
contains
 subroutine s1(a,b,c,d,e,k3)
 complex(8),target:: a(k3,3)
 complex(8)        ::        b(k3,3)
 complex(8)        ::        c(k3,3)
 complex(8)       ::               d(k3,3)
 complex(8),target::               e
 a=e*matmul(b     ,c(:,:))+d(:,:)
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
call s1(a,b,c,d,a(1,1),3)
if (any(abs([a]-[&
(-59.0,61.0),(-70.0,74.0),(-81.0,87.0),(-128.,136.),(-157.,167.),(-186.,198.),(-197.,211.),(-244.,260.),(-291.,309.)&
])>0.0001)) print *,101,a
print *,'pass'
end

