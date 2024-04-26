module m1
integer,parameter:: k1=3,k2=4,k3=5
integer,allocatable:: a(:,:,:)
integer,allocatable:: b(:,:,:)
integer::n1=2,n2=2,n3=1
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1)
  a(n0+1,:,:)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::1)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::1_1)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::1_2)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::1_4)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::1_8)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::n3)=a(n0,:,:)+(n0+n2)
  a(n0+1,:,::min(1,n0))=a(n0,:,:)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1+1,k2,k3)

do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
do      n0=1,k1
  c(n0,:,:)=b(n0,:,:)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:)=c(n0,:,:)
end do
end subroutine
end
use m1
allocate( a(k1+1,k2,k3),b(k1+1,k2,k3))
a=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3])
b=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
