subroutine s1(k1,k2,k3,a)
real(8) :: a(k1,k2+1,k3)

forall (n1=1:k2)
  a(: , n1+1, 2 )=a(: , n1 , 1 )+dble(n1)
end forall

end
subroutine s2(k1,k2,k3,b)
real(8) :: b(k1,k2+1,k3)
real(8) :: c(k1,k2+1,k3)

do      n1=1,k2
  c(: , n1 , 2)=b(:, n1 , 1  )+dble(n1)
end do
do      n1=1,k2
  b(: , n1+1 , 2)=c(:, n1 , 2 )
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
