module m1
type x1
  integer:: xx
  integer,pointer::y(:,:,:)
end type
type x2
  integer:: xxx
  type(x1),pointer:: yy(:,:)
end type
  integer,target::t(3,3,3)=reshape([(k,k=1,27)],[3,3,3])
  type(x2):: v
  integer(8)::nn
integer,pointer:: g(:,:,:)
integer,pointer:: gx(:,:,:)
integer::n1=1,n3=3
contains
subroutine ss
allocate(g(3,3,3),source=t)
gx=>g(:,2:3,1:3)
kk=0
nn=loc(gx(:,:,2))
if (                       1 +  &
    isss(gx(:,:,2),kk,10001) /=2) print *,9000
if (isss(gx(:,:,2),kk,10001) +  &
    isss(gx(:,:,2),kk,10001) /=2) print *,9001
allocate(v%yy(4,4))
v%yy(4,4)%y=> gx
nn=loc(v%yy(4,4)%y(:,:,2))

if (isss(v%yy(4,4)%y(:,:,2),kk,10002) &
   +1                            /=2 ) print *,8000
if (isss(v%yy(4,4)%y(:,:,2),kk,10002) &
   +isss(v%yy(4,4)%y(:,:,2),kk,10002) /=2 ) print *,8001
if (isss(v%yy(4,4)%y(n1:,:,2),kk,10002) &
   +isss(v%yy(4,4)%y(:n3,:,2),kk,10002) /=2 ) print *,8001
if (.not. is_contiguous(v%yy(4,4)%y(:,:,2))  ) print *,8001
if (.not. is_contiguous(v%yy(4,4)%y(n1:,:,2))  ) print *,8001
if (.not. is_contiguous(v%yy(4,4)%y(n1:n3,n1:,2))  ) print *,8001
end subroutine
function  isss(x,kk,n)
integer x(3,2)
if (kk==0) then
if (loc(x)/=nn) print *,101,n
else
if (loc(x)==nn) print *,102,n
endif

if (any([x]/=[(k,k=13,18)])) print *,301,n
isss=1
end function   
end
use m1
call ss
print *,'pass'
end



