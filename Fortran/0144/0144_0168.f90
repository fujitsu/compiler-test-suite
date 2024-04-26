module m1
integer,parameter:: k1=20,k2=20,k3=20
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
integer::n1=1,n2=2
contains
subroutine s1(k1,k2,k3)
forall (n0=k1-k2:k3-k2)
  a=a+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3+1,k1)

do      n0=k1-k2,k3-k2
  c=b+n0+n2
end do
do      n0=k1-k2,k3-k2
  b=c
end do
end subroutine
end
use m1
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
