module m1
integer,parameter::mm1=100001,mm2=100002
type x
sequence
real(8),allocatable :: a(:,:,:)
end type
contains
subroutine s1(k1,k2,k3,v)
type(x),allocatable::v(:)

forall (n1=1:k2,n2=1:k3)
  v(mm2)%a(: , n1, n2+1 )=v(mm1)%a(: , n1 , n2 )+dble(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3,v)
real(8) :: c(k1,k2,k3)
type(x),allocatable::v(:)

do      n2=1,k3
do      n1=1,k2
  c(: , n1 , n2)=v(mm1)%a(:, n1 , n2  )+dble(n1+n2)
end do
end do
do      n2=1,k3
do      n1=1,k2
  v(mm2)%a(: , n1 , n2+1)=c(:, n1 , n2 )
end do
end do
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
type(x),allocatable::vb(:),va(:)
allocate(va(mm1:mm2),vb(mm1:mm2))
allocate( va(mm1)%a(k1,k2,k3+1),vb(mm1)%a(k1,k2,k3+1))
allocate( va(mm2)%a(k1,k2,k3+1),vb(mm2)%a(k1,k2,k3+1))
va(mm1)%a=reshape([(n,n=1,25*3)],[5,3,5])
vb(mm1)%a=reshape([(n,n=1,25*3)],[5,3,5])
va(mm2)%a=reshape([(n,n=1,25*3)],[5,3,5])
vb(mm2)%a=reshape([(n,n=1,25*3)],[5,3,5])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va(mm1)%a/=vb(mm1)%a)) then 
print *,101
print *,va(mm1)%a
print *,vb(mm1)%a
endif
if (any(va(mm2)%a/=vb(mm2)%a)) then 
print *,102
print *,va(mm2)%a
print *,vb(mm2)%a
endif
print *,'pass'
end
