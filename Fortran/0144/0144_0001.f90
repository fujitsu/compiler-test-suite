module m1
type x
integer(8) xv,v
end type
integer,parameter:: k1=4,k2=4,k3=4
type xx
integer::dummy
type(x),allocatable :: a(:,:,:,:,:,:,:)
type(x),allocatable :: b(:,:,:,:,:,:,:)
end type
type xxx
integer::dummy
type (xx),allocatable::z(:)
end type
type (xxx),allocatable::w(:,:,:)
integer::i2=2
contains
subroutine s1(k1,k2,k3)

forall (n2=2:k3,n4=2:i2,n5=i2:2)
  w(i2,i2,i2)%z(n4)%a(:,:, :, n2,:,:,: )%v=w(i2,i2,i2)%z(n4)%a(:,:  , : , n2,:,:,: )%v+dble(n2)
end forall
end subroutine
subroutine s2(k1,k2,k3)
integer(8) :: c(k1,k1,k2,k3,k1,k1,k1)

do      n5=i2,2
do      n4=2,i2
do      n2=2,k3
  c(:,: ,: , n2,:,:,:)=w(i2,i2,i2)%z(n4)%b(:,:,:, n2,:,:,:  )%v+dble(n2)
end do
end do
end do
do      n5=i2,2
do      n4=2,i2
do      n2=2,k3
  w(i2,i2,i2)%z(n4)%b(:,: , :, n2,:,:,:)%v=c(:,:, : , n2,:,:,: )
end do
end do
end do
end subroutine
end

use m1
allocate(w(i2,i2,i2))
allocate(w(i2,i2,i2)%z(i2))
allocate( w(i2,i2,i2)%z(i2)%a(k1,k1,k2,k3,k1,k1,k1))
allocate( w(i2,i2,i2)%z(i2)%b(k1,k1,k2,k3,k1,k1,k1))
w(i2,i2,i2)%z(i2)%a%v=reshape([(n,n=1,20*4*4*4*4*4)],[4,4,4,4,4,4,4])
w(i2,i2,i2)%z(i2)%b%v=reshape([(n,n=1,20*4*4*4*4*4)],[4,4,4,4,4,4,4])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(w(i2,i2,i2)%z(i2)%a%v/=w(i2,i2,i2)%z(2)%b%v)) then 
print *,101
print *,w(i2,i2,i2)%z(i2)%a
print *,w(i2,i2,i2)%z(i2)%b
endif
print *,'pass'
end
