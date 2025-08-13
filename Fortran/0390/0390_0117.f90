module m1
integer(8):: save
contains
subroutine s1(n)
integer,pointer::p(:,:)
integer,target::t(3,2)=reshape([1,2,3,4,5,6],[3,2])

if (n==0) p=>null()
if (n==1) p=>t(:,:)
if (n==2) p=>t(1:3:2,:)
save= loc(p)
write(33,'(z16.16)') loc(p)
do k=1,5
call ss(p)
end do
write(33,*)
write(33,'(z16.16)') loc(p)
do k=1,5
kk= fun(p)
if (kk/=0) print *,101
end do
end subroutine
subroutine ss(x)
integer,intent(in):: x(:,:)
if (any([x]/=[1,3,4,6])) print *,1021
write(33,'(z16.16)') loc(x)
if (save/=loc(x)) print *,3000
end subroutine
function fun(x) result(k)
integer,intent(in):: x(:,:)
if (any([x]/=[1,3,4,6])) print *,1022
write(33,'(z16.16)') loc(x)
if (save/=loc(x)) print *,3000
k=0
end function
end

use m1
call s1(2)
print *,'pass'
end
