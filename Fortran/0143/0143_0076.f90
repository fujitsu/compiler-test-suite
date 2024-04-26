module m1
real(8),allocatable :: a(:,:,:)
real(8),allocatable :: b(:,:,:)
contains
subroutine s1(k1,k2,k3)

forall (n0=1:k1,n1=1:k2,n2=1:k3)
  a( n0, n1 ,n2:n2)=a(n0, n1 , n2:n2 )+dble(n0+n1+n2)
end forall
end subroutine
subroutine s2(k1,k2,k3)
real(8) :: c(k1,k2,k3)

do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  c(n0, n1 , n2:n2)=b(n0, n1 , n2:n2  )+dble(n0+n1+n2)
end do
end do
end do
do      n2=1,k3
do      n1=1,k2
do      n0=1,k1
  b(n0 , n1 , n2:n2)=c(n0, n1 , n2:n2 )
end do
end do
end do
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
allocate(a(k1,k2,k3),b(k1,k2,k3))
a=reshape([(n,n=1,20*3)],[5,3,4])
b=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
