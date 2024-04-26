module m1
integer,parameter:: k1=20,k2=20,k3=20
type x
integer:: a(-k1:k1,-k2:k2,-k3:k3+1)
integer:: b(-k1:k1,-k2:k2,-k3:k3+1)
end type
type xx
type(x),allocatable::z
end type
type(xx),allocatable::y(:)
integer::j1=-20,j2=20,l1=1
contains
subroutine s1(k1,k2,k3)
n1=2
forall (n2=1:k3)
  y(2)%z%a(j1:j2:l1 , j1:j2, n2+1 )=y(2)%z%a(j1:j2:l1 , j1:j2 , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer:: c(-k1:k1,-k2:k2,-k3:k3)
n1=2
do      n2=1,k3
  c(: , : , n2)=y(2)%z%b(j1:j2:l1,j1:j2, n2  )+(n1+n2)
end do
do      n2=1,k3
  y(2)%z%b(j1:j2:l1,j1:j2, n2+1)=c(:, : , n2 )
end do
end subroutine
end
use m1
allocate( y(2) )
allocate( y(2)%z )
y(2)%z%a=reshape([(n,n=1,50*50*50)],[k1*2+1,k2*2+1,k3*2+2])
y(2)%z%b=reshape([(n,n=1,50*50*50)],[k1*2+1,k2*2+1,k3*2+2])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(y(2)%z%a/=y(2)%z%b)) then
print *,101
print *,y(2)%z%a
print *,y(2)%z%b
endif
print *,'pass'
end
