module m1
complex,parameter,dimension(3,2)::c=reshape([1,2,3,4,5,6],[3,2])
integer::k1=1,k3=3
contains
subroutine tt(ca)
complex,contiguous::ca(:,:)
if (any(abs(ca-c)>0.0001)) print *,103
end subroutine
end
subroutine s1
use m1
complex,save::ca(3,2)
ca=c
call tt(ca)
call tt(ca(:,:))
call tt(ca(k1:k3,:))
end
call s1
print *,'pass'
end
