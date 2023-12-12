module m1
integer,parameter:: ac(*,*)=reshape([(n,n=1,6)],[2,3])
contains
subroutine ss(a1)
integer,contiguous:: a1(:,:)
if (any(a1/=ac)) print *,1001
call=sss(a1)
if (call/=1) print *,101
call=sss(a1(:,:))
if (call/=1) print *,102
end subroutine
function   sss(a1)
integer,contiguous:: a1(:,:)
if (any(a1/=ac)) print *,2001
sss=1
end function
end
use m1
integer:: a1(2,3)=ac
call ss(a1)
if (any(a1/=ac)) print *,3001
a1=ac
call ss(a1(:,:))
print *,'OK'
end

