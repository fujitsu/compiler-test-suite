module m1
contains
 subroutine s1(a,b,c)
 real(8),target:: a(:,:),b(:,:),c(:,:)
 a=a+matmul(b,c)
 end subroutine
end
use m1
 real(8),target:: a(3,3)
 real(8),parameter::p(3,3)=reshape([(k,k=1,100)],[3,3])
a=p
call s1(a,a,a)
if (any(abs([a]-[&
 31.,38.,45.,70.,86.,102., 109.,134.,159.])>0.0001)) print *,101
print *,'pass'
end

