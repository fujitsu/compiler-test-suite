module m1
integer(8):: save
contains
subroutine s1(n)
integer,pointer::p(:,:)
integer,target::t(3,2)=reshape([1,2,3,4,5,6],[3,2])
integer,target::tt(3,2)=reshape([1,2,3,4,5,6],[3,2])

if (n==0) p=>null()
if (n==1) p=>t(:,:)
if (n==2) p=>t(1:3:2,:)
save= loc(p)
write(21,'(z16.16)') loc(p)
do k=1,5
t=tt
call ss(p)
if (any(p(:,1)/=11)) print *,4011
if (any(p(:1,2)/=11)) print *,4012
if (any(p(2:,2)/=[5,6])) print *,4013
end do
write(21,*)
write(21,'(z16.16)') loc(p)
do k=1,5
t=tt
kk= fun(p)
if (any(p(:,1)/=11)) print *,4021
if (any(p(:1,2)/=11)) print *,4022
if (any(p(2:,2)/=[5,6])) print *,4023
if (kk/=0) print *,101
end do
end subroutine
subroutine ss(x)
integer,optional:: x(4)
if (any(x/=[1,2,3,4])) print *,1021
write(21,'(z16.16)') loc(x)
if (save/=loc(x)) print *,3000
x=11
end subroutine
function fun(x) result(k)
integer,optional:: x(4)
if (any(x/=[1,2,3,4])) print *,1022
write(21,'(z16.16)') loc(x)
if (save/=loc(x)) print *,3000
k=0
x=11
end function
end

use m1
call s1(1)
print *,'pass'
end
