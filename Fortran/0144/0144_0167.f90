module m1
integer,parameter:: k1=20,k2=20,k3=20
type x
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
end type
type(x)::z
integer::n1=1,n2=2
contains
subroutine s1(k1,k2,k3)
forall (n0=k1-k2:k3-k2)
  z%a=z%a+(n0+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3+1,k1)

do      n0=k1-k2,k3-k2
  c=z%b+n0+n2
end do
do      n0=k1-k2,k3-k2
  z%b=c
end do
end subroutine
end
use m1
z%a=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
z%b=reshape([(n,n=1,k1*k2*(k3+1)*k1)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
