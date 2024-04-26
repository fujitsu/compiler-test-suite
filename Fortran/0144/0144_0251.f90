module m1
integer,parameter:: k1=3,k2=4,k3=5
integer:: a(0:k1+1,k2,k3+1,k1+1)
integer:: b(0:k1+1,k2,k3+1,k1+1)
integer::n1=2,n2=2,n3=1
contains
subroutine s1(k1,k2,k3)
forall (n0=1:k1)
  a(n0+1,:,:,2)=a(n0+1,:,:,2)+a(n0-1,:,:,2)+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(1,0:k1+1,1:k2,0:k3,2)

do      n0=1,k1
  c(1,n0,:,:,2)=b(n0+1,:,:,2)+b(n0-1,:,:,2)+n0+n2
end do
do      n0=1,k1
  b(n0+1,:,:,2)=c(1,n0,:,:,2)
end do
end subroutine
end
use m1
a=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+2,k2,k3+1,k1+1])
b=reshape([(n,n=1,(k1+2)*k2*(k3+1)*(k1+1))],[k1+2,k2,k3+1,k1+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
