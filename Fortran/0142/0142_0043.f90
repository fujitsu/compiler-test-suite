module m1
integer::index(6)=[1,2,3,4,5,6]
end 
subroutine s1(k1,k2,k3,a)
use m1
real(8) :: a(k1,k2+1,k3)

n1=1
forall (n2=1:k3)
  a(: , index(n1+1), n2 )=a(: , index(n1) , n2 )+dble(n1+n2)
end forall

end
subroutine s2(k1,k2,k3,b)
use m1
real(8) :: b(k1,k2+1,k3)
real(8) :: c(k1,k2+1,k3)

n1=1
do      n2=1,k3
  c(: , n1 , n2)=b(:, index(n1) , n2  )+dble(n1+n2)
end do
do      n2=1,k3
  b(: , index(n1+1) , n2)=c(:, n1 , n2 )
end do
end

integer,parameter:: k1=5,k2=3,k3=4
real(8):: a(k1,k2+1,k3),b(k1,k2+1,k3)
a=reshape([(n,n=1,20*4)],[5,4,4])
b=reshape([(n,n=1,20*4)],[5,4,4])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
