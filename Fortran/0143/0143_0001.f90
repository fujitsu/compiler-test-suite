module m1
contains
subroutine s1(k1,k2,k3,a)
real(8):: a(:,:,:)
forall (n1=1:k2,n2=1:k3)
forall (n0=1:k1)
  a(n0 , n1, n2+1 )=a(n0 , n1 , n2 )+dble(n1+n2)
end forall
end forall

end subroutine
subroutine s2(k1,k2,k3,a)
real(8) :: c(k1,k2,k3)
real(8) :: a(:,:,:)

do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  c(n0 , n1 , n2)=a(n0, n1 , n2  )+dble(n1+n2)
end do
end do
end do
do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  a(n0 , n1 , n2+1)=c(n0, n1 , n2 )
end do
end do
end do
end subroutine
end
use m1
integer,parameter:: k1=5,k2=3,k3=4
real(8),allocatable :: va(:,:,:)
real(8),allocatable :: vb(:,:,:)
allocate( va(k1,k2,k3+1),vb(k1,k2,k3+1))
va=reshape([(n,n=1,25*3)],[5,3,5])
vb=reshape([(n,n=1,25*3)],[5,3,5])
call s1(k1,k2,k3,va)
call s2(k1,k2,k3,vb)
if (any(va/=vb)) then 
print *,101
print *,va
print *,vb
endif
print *,'pass'
end
