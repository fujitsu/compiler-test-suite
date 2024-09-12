module m1
type x1
  integer:: xx
  integer,pointer::y(:,:,:)
end type
type x2
  integer:: xxx
  type(x1),pointer:: yy
end type
  integer,target::t(3,3,3)=reshape([(k,k=1,27)],[3,3,3])
  type(x2):: v
  integer(8)::nn
integer,pointer:: g(:,:,:)
integer,pointer:: gx(:,:,:)
contains
subroutine ss
allocate(g(3,3,3),source=t)
gx=>g(:,2:3,1:3)
kk=0
nn=loc(gx(:,:,2))
call sss(gx(:,:,2),kk,10001)
allocate(v%yy)
v%yy%y=> gx
nn=loc(v%yy%y(:,:,2))
call sss(v%yy%y(:,:,2),kk,10002)
end subroutine
subroutine sss(x,kk,n)
integer x(3,2)
if (kk==0) then
if (loc(x)/=nn) print *,101,n
else
if (loc(x)==nn) print *,102,n
endif
if (any([x]/=[(k,k=13,18)])) print *,301,n
end subroutine
end
use m1
call ss
print *,'pass'
end



