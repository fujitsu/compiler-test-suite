module m1
real(8),pointer :: a(:,:,:),b(:,:,:),c(:,:,:)
contains
subroutine s1(k1,k2,k3)

forall (n=1:k2+1)
  a(1:k1 , n , 1:k3)=a(1:k1, n , 1:k3  )+dble(n)
end forall

do      n=1,k2+1
  c(1:k1 , n , 1:k3)=b(1:k1, n , 1:k3  )+dble(n)
end do     
do      n=1,k2+1
  b(1:k1 , n , 1:k3)=c(1:k1, n , 1:k3  )
end do     
end subroutine
end

use m1
integer,parameter:: k1=2,k2=2,k3=2
allocate( a(k1,k2+1,k3),b(k1,k2+1,k3),c(k1,k2+1,k3))
a=reshape([(n,n=1,20*3)],[k1,k2+1,k3])
b=reshape([(n,n=1,20*3)],[k1,k2+1,k3])
call s1(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
