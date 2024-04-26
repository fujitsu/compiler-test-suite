module m1
integer,pointer :: b(:,:,:)
contains
subroutine s1(k1,k2,k3)

do      n=1,k2+1
  b(1:k1 , n , 1:k3)=b(1:k1, n , 1:k3  )+n
end do     
end subroutine
end

use m1
integer,parameter:: k1=2,k2=2,k3=2
integer,parameter::a(2,3,2)=reshape([2,3,5,6,8,9,8,9,11,12,14,15],[2,3,2])
allocate( b(k1,k2+1,k3))
b=reshape([(n,n=1,20*3)],[k1,k2+1,k3])
call s1(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
