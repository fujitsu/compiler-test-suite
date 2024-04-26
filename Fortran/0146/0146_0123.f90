module m1
contains
 subroutine s1(a,b,c,k3)
 complex(8),target:: a(:,:)
 complex(8)       ::               b(:,:)
 complex(8),target ::        c(:,:)
 a=a+matmul(b,c)
 end subroutine
end
use m1
 complex(8),target:: a(3,3),b(3,3),c(3,3)
 complex(8),parameter::p(3,3)=reshape([(cmplx(k,k),k=1,9)],[3,3])
a=p
b=p
c=p
call s1(a,b,a,3)
if (any(abs([a]-[&
(1.00,61.0),(2.00,74.0),(3.00,87.0),(4.00,136.),(5.00,167.),(6.00,198.),&
(7.00,211.),(8.00,260.),(9.00,309.)&
])>0.0001)) print *,101,a
print *,'pass'
end

