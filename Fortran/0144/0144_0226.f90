module m1
integer,parameter:: k1=3,k2=4,k3=5
integer,allocatable:: a(:,:,:,:)
integer,allocatable:: b(:,:,:,:)
integer::n1=2,n2=2
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1)
  a(n0,:,:,n2+n1-2)=a(n0,:,:,n2+n1-2)+a(n0,:,:,n2+n1-1)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k1,k2,k3+1,k1)

do      n0=1,k1
  c(1,n0,:,:,n2+n1-2)=b(n0,:,:,n2+n1-2)+b(n0,:,:,n2+n1-1)+n0+n2
end do
do      n0=1,k1
  b(n0,:,:,n2+n1-2)=c(1,n0,:,:,n2+n1-2)
end do
end subroutine
end
use m1
allocate( a(k1,k2,k3+1,k1),b(k1,k2,k3+1,k1))
a=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
b=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
