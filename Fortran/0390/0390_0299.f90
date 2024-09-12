module m1
type x1
  integer:: xx
  integer,pointer::y(:,:,:)
end type
type x2
  integer:: xxx
  type(x1):: yy
end type
  integer,target::t(3,3,3)=reshape([(k,k=1,27)],[3,3,3])
  type(x2):: v
  integer(8)::nn
contains
subroutine ss
allocate(v%yy%y(3,3,3),source=t)
kk=0
nn=loc(v%yy%y(:,:,2))
call sss(v%yy%y(:,:,2),kk)
end subroutine
subroutine sss(x,kk)
integer x(3,3)
if (kk==0) then
if (loc(x)/=nn) print *,101
else
if (loc(x)==nn) print *,102
endif
if (any([x]/=[(k,k=10,18)])) print *,301
end subroutine
end
use m1
call ss
print *,'pass'
end



