module m1
integer,parameter:: ac(*,*)=reshape([(n,n=1,6)],[2,3])
type x
integer,pointer,contiguous:: a1(:,:)
end type
contains
subroutine ss(v)
type(x)::v
if (any(v%a1/=ac)) print *,1001
call sss(v%a1)
call sss(v%a1(:,:))
end subroutine
subroutine sss(a1)
integer,pointer,intent(in),contiguous:: a1(:,:)
if (any(a1/=ac)) print *,2001
end subroutine
end
use m1
type(x)::v
allocate(v%a1(2,3))
v%a1=ac
call ss(v)
if (any(v%a1/=ac)) print *,3001
print *,'OK'
end
