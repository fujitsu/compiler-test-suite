module m1
integer,parameter:: k1=30,k2=10,k3=50,k4=100
integer,allocatable:: a(:,:,:,:)
integer,allocatable:: b(:,:,:,:)
contains
elemental function f(k) result(ir)
integer,intent(in)::k
ir=k
end function
subroutine s1(k1,k2,k3,k4)
!$omp parallel
!$omp workshare
forall (n2=1:k1,n3=1:k3)
  a(n2,:,n3,:)=a(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(a(n2,:,n3,:))
  a(n2,:,n3,:)=a(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4])+f(a(n2,:,n3,:))
end forall
!$omp end workshare
!$omp end parallel
end subroutine
subroutine s2(k1,k2,k3,k4)
integer :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3
do      n2=1,k1
  c(n2,:,n3,:)=b(n2,:,n3,:)+reshape([(n,n=1,k2*k4)],[k2,k4]) +f(b(n2,:,n3,:))
end do
end do
do      n3=1,k3
do      n2=1,k1
  b(n2,:,n3,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
allocate( a(k1,k2,k3+1,k4),b(k1,k2,k3+1,k4))
a=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
b=reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4])
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
