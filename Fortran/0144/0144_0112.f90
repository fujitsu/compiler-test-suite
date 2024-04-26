module m1
integer,parameter:: k1=2,k2=2,k3=2
type x
integer,allocatable:: a(:,:,:)
integer,allocatable:: b(:,:,:)
end type
type(x)::z
integer::j1=1,j2=2
contains
subroutine s1(k1,k2,k3)
n1=2
forall (n2=1:k3)
  z%a(j1:j2:j1 , j1:j2, n2+1 )=z%a(j1:j2:j1 , j1:j2 , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer :: c(k1,k2,k3)
n1=2
do      n2=1,k3
  c(: , : , n2)=z%b(j1:j2:j1,j1:j2, n2  )+(n1+n2)
end do
do      n2=1,k3
  z%b(j1:j2:j1,j1:j2, n2+1)=c(:, : , n2 )
end do
end subroutine
end
use m1
allocate( z%a(k1,k2,k3+1),z%b(k1,k2,k3+1))
z%a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
z%b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(z%a/=z%b)) then
print *,101
print *,z%a
print *,z%b
endif
print *,'pass'
end
