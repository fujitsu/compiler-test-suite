module m1
integer,parameter:: k1=3,k2=4,k3=3
type x
integer,allocatable:: a(:,:,:,:)
integer,allocatable:: b(:,:,:,:)
end type
type(x)::z
integer::n1=2,n2=2
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k2)
  z%a(2,n0,:,:)= (n0+n2)+ z%a(:,n0,:,2)+z%a(2,n0,:,:)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k1,k2,k3,k1)

do      n0=1,k2
  c(1,:,n0,:,2)=(n0+n2)+ z%b(:,n0,:,2)+z%b(2,n0,:,:)+(n0+n2)
end do
do      n0=1,k2
  z%b(2,n0,:,:)=c(1,:,n0,:,2)
end do
end subroutine
end
use m1
allocate( z%a(k1,k2,k3,k1),z%b(k1,k2,k3,k1))
z%a=reshape([(n,n=1,k1*k2*(k3)*k1)],[k1,k2,k3,k1])
z%b=reshape([(n,n=1,k1*k2*(k3)*k1)],[k1,k2,k3,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
