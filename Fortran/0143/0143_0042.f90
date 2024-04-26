module m1
contains
subroutine s1(k1,k2,k3,a)
real(8),pointer :: a(:,:,:)

forall (n=1:k2+1)
  a(1:k1 , n , 1:k3)=a(1:k1, n , 1:k3  )+dble(n)
end forall

end subroutine
subroutine s2(k1,k2,k3,b)
real(8),pointer :: b(:,:,:)
real(8) :: c(k1,k2+1,k3)

do      n=1,k2+1
  c(1:k1 , n , 1:k3)=b(1:k1, n , 1:k3  )+dble(n)
end do     
do      n=1,k2+1
  b(1:k1 , n , 1:k3)=c(1:k1, n , 1:k3  )
end do     
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3,k3=3
real(8),pointer:: a(:,:,:),b(:,:,:)
allocate( a(k1,k2+1,k3),b(k1,k2+1,k3))
a=reshape([(n,n=1,20*3)],[5,4,3])
b=reshape([(n,n=1,20*3)],[5,4,3])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a/=b)) print *,101
print *,'pass'
end
