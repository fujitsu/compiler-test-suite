module m1
integer,parameter:: k1=3,k2=4,k3=5
type x
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
end type
type(x)::z(k1)
integer::n1=2,n2=2
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1,n2=1:k1,n3=1:k3)
  z(n0)%a(n2,:,n3,:)=z(n0)%a(n2,:,n1,:)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k1,k2,k3+1,k1)

do      n3=1,k3
do      n2=1,k1
do      n0=1,k1
  c(n0,n2,:,n1,:)=z(n0)%b(n2,:,n1,:)+n0+n2
end do
end do
end do
do      n3=1,k3
do      n2=1,k1
do      n0=1,k1
  z(n0)%b(n2,:,n3,:)=c(n0,n2,:,n1,:)
end do
end do
end do
end subroutine
end
use m1
do n0=1,k1
z(n0)%a=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
z(n0)%b=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
end do
call s1(k1,k2,k3)
call s2(k1,k2,k3)
do n0=1,k1
if (any(z(n0)%a/=z(n0)%b)) then
print *,101
print *,z(n0)%a
print *,z(n0)%b
endif
end do
print *,'pass'
end
