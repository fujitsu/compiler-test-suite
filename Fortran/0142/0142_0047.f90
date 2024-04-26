module m1
integer::index(5)=[1,2,3,4,5]
end 
subroutine s1(k1,k2,k3,a)
use m1
type x
 sequence
 integer::vx,v
end type
type(x) :: a(k1,k2,k3)
forall (n1=1:k2,n2=1:k3)
  a(: , index(n1), n2 )%v=a(: , index(n1) , n2 )%v+dble(n1+n2)
end forall

end
subroutine s2(k1,k2,k3,b)
use m1
type x
 sequence
 integer::vx,v
end type
type(x) :: b(k1,k2,k3)
integer :: c(k1,k2,k3)

do      n2=1,k3
do      n1=1,k2
  c(: , n1 , n2)=b(:, index(n1) , n2  )%v+dble(n1+n2)
end do
end do
do      n2=1,k3
do      n1=1,k2
  b(: , index(n1) , n2)%v=c(:, n1 , n2 )
end do
end do
end

integer,parameter:: k1=5,k2=3,k3=4
type x
 sequence
 integer::vx,v
end type
type(x) :: a(k1,k2,k3),b(k1,k2,k3)
a%v=reshape([(n,n=1,20*3)],[5,3,4])
b%v=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a%v/=b%v)) then 
print *,101
print *,a%v
print *,b%v
endif
print *,'pass'
end
