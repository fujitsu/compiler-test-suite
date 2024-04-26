module m1
type x
integer::xx
real(8),allocatable :: a(:,:,:)
end type
end
subroutine s1(k1,k2,k3,v)
use m1
type(x)::v

forall (n0=1:k1)
forall (n2=n0:k3-1)
  v%a(n0 , : , n2+1 )=v%a(n0 , :  , n2 )+dble(n0+1+n2)
end forall
end forall

end
subroutine s2(k1,k2,k3,v)
use m1
real(8) :: c(k1,k2,k3)
type(x)::v

do      n0=1,k1
do      n2=n0,k3-1
  c(n0, :  , n2)=v%a(n0, :  , n2  )+dble(n0+1+n2)
end do
end do
do      n0=1,k1
do      n2=n0,k3-1
  v%a(n0 , :  , n2+1)=c(n0, :  , n2 )
end do
end do
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
type(x)::va
type(x)::vb
allocate( va%a(k1,k2,k3),vb%a(k1,k2,k3))
va%a=reshape([(n,n=1,20*3)],[5,3,4])
vb%a=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va%a/=vb%a)) then 
print *,101
print *,va%a
print *,vb%a
endif
print *,'pass'
end
