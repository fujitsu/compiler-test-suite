module mm
integer,parameter:: k1=2,k2=2,k3=2
type x
integer,pointer:: a(:,:,:)
integer,pointer:: b(:,:,:)
end type
type xx
type(x),allocatable::z
type(x),allocatable::zp
end type
type(xx),allocatable::y(:)
type(xx),allocatable::yp(:)
integer::j1=1,j2=2
end
module m1
use mm
contains
subroutine s1(k1,k2,k3)
n1=2
forall (n2=1:k3)
  y(2)%z%a(j1:j2:j1 , j1:j2, n2+1 )=y(2)%z%a(j1:j2:j1 , j1:j2 , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3)
n1=2
do      n2=1,k3
  c(: , : , n2)=y(2)%z%b(j1:j2:j1,j1:j2, n2  )+(n1+n2)
end do
do      n2=1,k3
  y(2)%z%b(j1:j2:j1,j1:j2, n2+1)=c(:, : , n2 )
end do
do      n2=1,k3
  c(: , : , n2)=yp(2)%zp%b(j1:j2:j1,j1:j2, n2  )+(n1+n2)
end do
do      n2=1,k3
  yp(2)%zp%b(j1:j2:j1,j1:j2, n2+1)=c(:, : , n2 )
end do
end subroutine
end
use m1
allocate( y(2) )
allocate( y(2)%z )
allocate( yp(2) )
allocate( yp(2)%zp )
allocate( y(2)%z%a(k1,k2,k3+1),y(2)%z%b(k1,k2,k3+1))
y(2)%z%a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
y(2)%z%b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
allocate( yp(2)%zp%a(k1,k2,k3+1),yp(2)%zp%b(k1,k2,k3+1))
yp(2)%zp%a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
yp(2)%zp%b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(y(2)%z%a/=y(2)%z%b)) then
print *,101
print *,y(2)%z%a
print *,y(2)%z%b
endif
print *,'pass'
end
