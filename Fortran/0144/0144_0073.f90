module m1
integer,parameter:: k1=2,k2=2,k3=2
integer,allocatable:: a(:,:,:)
integer,allocatable:: b(:,:,:)
contains
subroutine s1(k1,k2,k3,v)
integer::v(:)
n1=k1
forall (n2=1:k3)
  a(: , v, n2+1 )=a(: , v , n2 )+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3,v)
integer::v(:)
integer :: c(k1,k2,k3)
n1=k1
do      n2=1,k3
  c(: , v  , n2)=b(:, v  , n2  )+(n1+n2)
end do
do      n2=1,k3
  b(: ,v , n2+1)=c(:, v  , n2 )
end do
end subroutine
end
use m1
integer::v(2)=[1,2]
allocate( a(k1,k2,k3+1),b(k1,k2,k3+1))
a=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
b=reshape([(n,n=1,25*3)],[k1,k2,k3+1])
call s1(k1,k2,k3,v)
call s2(k1,k2,k3,v)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
