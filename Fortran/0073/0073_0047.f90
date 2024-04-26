module m1
integer,parameter:: k1=3,k2=10,k3=5,k4=10
type x
complex(8),allocatable:: a(:,:,:,:)
complex(8),allocatable:: b(:,:,:,:)
end type
type(x)::z
integer::n1=2,n2=2
end
use m1
write(1,'(a)') repeat('0',16)
allocate( z%a(k1,k2,k3+1,k4),z%b(k1,k2,k3+1,k4))
z%a=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),&
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
z%b=cmplx( &
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),&
    reshape([(n,n=1,k1*k2*(k3+1)*k4)],[k1,k2,k3+1,k4]),8)
if (any(abs(z%a-z%b)>0.000000001)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
