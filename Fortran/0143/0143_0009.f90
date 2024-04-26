module m1
type x
real(8),allocatable :: a(:,:,:)
integer::xx
end type
parameter(n9=999999,n8=n9-2)
end
subroutine s1(k1,k2,k3,v)
use m1
type(x)::v

forall (n1=n8:k2,n2=n8:k3)
  v%a(: , n1, n2+1 )=v%a(: , n1 , n2 )+dble(n1+n2)
end forall

end
subroutine s2(k1,k2,k3,v)
use m1
real(8) :: c(n8:k1,n8:k2,n8:k3)
type(x)::v

do      n2=n8,k3
do      n1=n8,k2
  c(: , n1 , n2)=v%a(:, n1 , n2  )+dble(n1+n2)
end do
end do
do      n2=n8,k3
do      n1=n8,k2
  v%a(: , n1 , n2+1)=c(:, n1 , n2 )
end do
end do
end

use m1
integer,parameter:: k1=n8+4,k2=n8+2,k3=n8+3
type(x)::va
type(x)::vb
allocate( va%a(n8:k1,n8:k2,n8:k3+1),vb%a(n8:k1,n8:k2,n8:k3+1))
va%a=reshape([(n,n=1,25*3)],[5,3,5])
vb%a=reshape([(n,n=1,25*3)],[5,3,5])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va%a/=vb%a)) then 
print *,101
print *,va%a
print *,vb%a
endif
print *,'pass'
end
