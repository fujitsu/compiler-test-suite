module m1
integer,parameter::mm1=100001,mm2=100002
end
subroutine s1(k1,k2,k3,v)
use m1
type x
sequence
integer(8),allocatable :: a(:,:)
end type
type(x)::v(mm1:mm2)

forall (n2=1:k3)
  v(mm2)%a(: , n2+1 )=v(mm2)%a(: , n2 )+dble(n2)
end forall

end
subroutine s2(k1,k2,k3,v)
use m1
integer(8) :: c(k1,k3)
type x
sequence
integer(8),allocatable :: a(:,:)
end type
type(x)::v(mm1:mm2)

do      n2=1,k3
  c(: , n2)=v(mm2)%a(:, n2  )+dble(n2)
end do
do      n2=1,k3
  v(mm2)%a(: , n2+1)=c(:, n2 )
end do
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
type x
sequence
integer(8),allocatable :: a(:,:)
end type
type(x)::va(2),vb(2)
allocate( va(1)%a(k1,k3+1),vb(1)%a(k1,k3+1))
allocate( va(2)%a(k1,k3+1),vb(2)%a(k1,k3+1))
va(1)%a=reshape([(n,n=1,25*3)],[5,5])
vb(1)%a=reshape([(n,n=1,25*3)],[5,5])
va(2)%a=reshape([(n,n=1,25*3)],[5,5])
vb(2)%a=reshape([(n,n=1,25*3)],[5,5])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va(1)%a/=vb(1)%a)) then 
print *,101
print *,va(1)%a
print *,vb(1)%a
endif
if (any(va(2)%a/=vb(2)%a)) then 
print *,102
print *,va(2)%a
print *,vb(2)%a
endif
print *,'pass'
end
