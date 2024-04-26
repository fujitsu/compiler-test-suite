subroutine s1(k1,k2,k3,a)
type x
 sequence
 integer::vx,v
end type
type(x) :: a(k1,k2,k3)

forall (n1=1:k2)
  a(: , n1, 2 )%v=a(: , n1 , 1 )%v+dble(n1)
end forall

end
subroutine s2(k1,k2,k3,b)
type x
 sequence
 integer::vx,v
end type
type(x) :: b(k1,k2,k3)
integer :: c(k1,k2,k3)

do      n1=1,k2
  c(: , n1 , 2)=b(:, n1 , 1  )%v+dble(n1)
end do
do      n1=1,k2
  b(: , n1 , 2)%v=c(:, n1 , 2 )
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
