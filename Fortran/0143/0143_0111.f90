module m1
type x
integer(8) xv,v
end type
integer,parameter:: k1=4,k2=4,k3=4
type xx
integer::dummy
type(x),pointer :: a(:,:,:,:)
type(x),pointer :: b(:,:,:,:)
end type
type (xx)::z
contains
subroutine s1(k1,k2,k3)

forall (n1=1:k2,n2=2:k3)
forall (n0=1:k1:k1-3)
  z%a(:,n0  , n1, n2 )%v=z%a(:,n0  , n1 , n2-1 )%v+dble(n1+n2)
end forall
end forall
end subroutine
subroutine s2(k1,k2,k3)
integer(8) :: c(k1,k1,k2,k3)

do      n2=2,k3
do      n1=1,k2
do      n0=1,k1
  c(:,n0 , n1 , n2)=z%b(:,n0, n1 , n2-1  )%v+dble(n1+n2)
end do
end do
end do
do      n2=2,k3
do      n1=1,k2
do      n0=1,k1
  z%b(:,n0 , n1 , n2)%v=c(:,n0, n1 , n2 )
end do
end do
end do
end subroutine
end

use m1
allocate( z%a(k1,k1,k2,k3))
allocate( z%b(k1,k1,k2,k3))
z%a%v=reshape([(n,n=1,20*4*4)],[4,4,4,4])
z%b%v=reshape([(n,n=1,20*4*4)],[4,4,4,4])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a%v/=z%b%v)) then 
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
