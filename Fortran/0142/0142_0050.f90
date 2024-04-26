subroutine s1(k1,k2,k3,a)
integer :: a(k1,k2,k3)

forall (n1=1:k2,n2=1:k3)
  a(1 , n1, n2 )=a(1 , n1 , n2 )+dble(n1+n2)
end forall

end
subroutine s2(k1,k2,k3,b)
integer :: b(k1,k2,k3)
integer :: c(k1,k2,k3)

do      n2=1,k3
do      n1=1,k2
  c(1 , n1 , n2)=b(1, n1 , n2  )+dble(n1+n2)
end do
end do
do      n2=1,k3
do      n1=1,k2
  b(1 , n1 , n2)=c(1, n1 , n2 )
end do
end do
end

integer,parameter:: k1=5,k2=3,k3=4
integer:: a(k1,k2,k3),b(k1,k2,k3)
a=reshape([(n,n=1,20*3)],[5,3,4])
b=reshape([(n,n=1,20*3)],[5,3,4])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
