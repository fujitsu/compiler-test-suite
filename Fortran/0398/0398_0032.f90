module m1
integer,parameter:: k1=3,k2=4,k3=5,k4=6
type x
complex(8),allocatable:: a(:,:,:,:)
complex(8),allocatable:: b(:,:,:,:)
end type
type(x)::z
contains
elementalfunction f(k) result(r)
complex(8),intent(in)::k
complex(8)::r
r=k
end function
subroutine s1(k1,k2,k3,k4)
!$omp parallel 
!$omp workshare
forall (n2=1:k1,n3=1:k3-1)
  z%a(n2,:,n3+1,:)=z%a(n2,:,n3,:)+f(z%a(n2,:,n3,:))+1
  z%a(n2,:,n3+1,:)=z%a(n2,:,n3,:)+f(z%a(n2,:,n3,:))+1
end forall
!$omp end workshare
!$omp end parallel 
end subroutine
subroutine s2(k1,k2,k3,k4)
complex :: c(k1,k2,k3+1,k4)

do nnn=1,2
do      n3=1,k3-1
do      n2=1,k1
  c(n2,:,n3,:)=z%b(n2,:,n3,:)+f(z%b(n2,:,n3,:))+1
end do
end do
do      n3=1,k3-1
do      n2=1,k1
  z%b(n2,:,n3+1,:)=c(n2,:,n3,:)
end do
end do
end do
end subroutine
end
use m1
allocate( z%a(k1,k2,k3+1,k4),z%b(k1,k2,k3+1,k4))
z%a=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]), &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
z%b=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]), &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
call s1(k1,k2,k3,k4)
call s2(k1,k2,k3,k4)
if (any(abs(z%a-z%b)>0.0000001)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
