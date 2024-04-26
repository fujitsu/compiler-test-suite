module m1
integer,parameter:: k1=3,k2=4,k3=5
integer,allocatable:: a(:,:,:)
integer,allocatable:: b(:,:,:)
integer::n1=2,n2=2,n3=1
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1)
  a(2_8:4     ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:1   ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:1_1 ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:1_2 ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:1_4 ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:1_8 ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:n3  ,:,n0+1)=a(2_8:,:,n0)+(n0+n2)
  a(2_8:4:min(1,n0),:,n0+1)=a(2_8:,:,n0)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1+1,k2,k3+1)

do nnn=1,8
do      n0=1,k1
  c(2:,:,n0)=b(2:,:,n0)+n0+n2
end do
do      n0=1,k1
  b(2:,:,n0+1)=c(2:,:,n0)
end do
end do
end subroutine
end
use m1
allocate( a(k1+1,k2,k3+1),b(k1+1,k2,k3+1))
a=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3+1])
b=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
