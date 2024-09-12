module m1
integer,parameter:: k1=30,k2=10,k3=50,k4=100
type x
integer:: a(k1,k2,k3+1,k4)
integer:: b(k1,k2,k3+1,k4)
end type
type(x)::z
contains
elemental function f(k) result(ir)
integer,intent(in)::k
ir=k
end function
subroutine s1(k1,k2,k3,k4)
!$omp parallel
!$omp workshare
forall (n2=1:k1,n3=1:k3)
  z%a(n2,:,n3+1,:)=z%a(n2,:,n3+0,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(z%a(n2,:,n3+1,:))
  z%a(n2,:,n3+1,:)=z%a(n2,:,n3+0,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(z%a(n2,:,n3+1,:))
end forall
!$omp end workshare
!$omp end parallel
end subroutine
subroutine s2(k1,k2,k3,k4)
integer :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=z%b(n2,:,n3+0,:)+reshape([(n,n=1,k2*k4)],[k2,k4]) +f(z%b(n2,:,n3+1,:))
end do
end do
do      n3=1,k3
do      n2=1,k1
  z%b(n2,:,n3+1,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
z%a=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
z%b=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end