module m1
type x
integer(8) xv,v
end type
type(x),pointer :: a(:,:,:)
type(x),pointer :: b(:,:,:)
contains
subroutine s1(k1,k2,k3)

forall (n1=1:k2,n2=1:k3)
  a(: , n1, n2+1 )%v=a(: , n1 , n2 )%v+dble(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
integer(8) :: c(k1,k2,k3+1)

do      n2=1,k3
do      n1=1,k2
  c(: , n1 , n2)=b(:, n1 , n2  )%v+dble(n1+n2)
end do
end do
do      n2=1,k3
do      n1=1,k2
  b(: , n1 , n2+1)%v=c(:, n1 , n2 )
end do
end do
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3,k3=4
allocate(  b(k1,k2,k3+1),a(k1,k2,k3+1))
a%v=reshape([(n,n=1,25*3)],[5,3,5])
b%v=reshape([(n,n=1,25*3)],[5,3,5])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a%v/=b%v)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
