module m1
integer,parameter:: k1=2,k2=2,k3=2
type x
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
end type
type(x)::z
type xxx
integer::mx(1,1,1,2:2)=2
end type
type (xxx):: w
contains
subroutine s1(k1,k2,k3)
forall (n0=0:k1-2,n1=1:k2,n2=1:k3)
  z%a(: , n1, n2+1 ,w%mx(1,1,1,k1-k2+k3+n0):)=z%a(: , n1 , n2 ,w%mx(1,1,1,k1-k2+k3+n0):)+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3,k1)

do      n2=1,k3
do      n1=1,k2
do      n0=0,k1-2
  c(: , n1 , n2,w%mx(1,1,1,k1-k2+k3+n0):)=z%b(:, n1 , n2,w%mx(1,1,1,k1-k2+k3+n0):  )+(n1+n2)
end do
end do
end do
do      n2=1,k3
do      n1=1,k2
do      n0=0,k1-2
  z%b(: , n1 , n2+1,w%mx(1,1,1,k1-k2+k3+n0):)=c(:, n1 , n2,w%mx(1,1,1,k1-k2+k3+n0): )
end do
end do
end do
end subroutine
end
use m1
z%a=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
z%b=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
