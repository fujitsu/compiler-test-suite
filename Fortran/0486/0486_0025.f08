module m1
integer,parameter:: ac(*,*)=reshape([(n,n=1,6)],[2,3])
contains
subroutine ss(a1)
integer,pointer,intent(in),contiguous:: a1(:,:)
if (any(a1/=ac)) print *,1001
call sss(a1)
call sss(a1(:,:))
end subroutine
subroutine sss(a1)
integer,contiguous:: a1(:,:)
if (any(a1/=ac)) print *,2001
end subroutine
end
use m1
integer,pointer,contiguous:: a1(:,:)
allocate(a1(2,3))
a1=ac
call ss(a1)
if (any(a1/=ac)) print *,3001
a1=ac
call ss(a1(:,:))
print *,'pass'
end
