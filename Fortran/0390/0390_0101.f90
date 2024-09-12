subroutine s1()
integer,pointer::p(:,:)
integer,target::t(3,2)=reshape([1,2,3,4,5,6],[3,2])

p=>t(1:3:2,:)
write(1,'(z16.16)') loc(p)
do k=1,5
call ss(p)
end do
write(1,*)
write(1,'(z16.16)') loc(p)
do k=1,5
kk= fun(p) 
if (kk/=0) print *,101
end do
contains
subroutine ss(x) 
integer x(4)
if (any(x/=[1,3,4,6])) print *,1021
write(1,'(z16.16)') loc(x)
end subroutine
function fun(x) result(k)
integer x(4)
if (any(x/=[1,3,4,6])) print *,1022
write(1,'(z16.16)') loc(x)
k=0
end function
end


call s1
print *,'pass'
end
