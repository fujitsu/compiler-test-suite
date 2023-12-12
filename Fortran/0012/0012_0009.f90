module m1
integer,parameter:: ac(*,*)=reshape([(n,n=1,6)],[2,3])
contains
subroutine ss(a1)
integer:: a1(:,:)
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
integer,target:: b(4,3)
b(::2,:)=ac
call ss(b(::2,:))
if (any(b(::2,:)/=ac)) print *,3001
print *,'OK'
end

