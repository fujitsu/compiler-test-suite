subroutine s1(k1,k2,a)
integer :: a(k1,k2)

forall (n1=1:k2)
  a(1 , n1)=a(1 , n1 )+1
end forall

end
subroutine s2(k1,k2,b)
integer :: b(k1,k2)
integer :: c(k1,k2)

do      n1=1,k2
  c(1 , n1) =b(1, n1 )+1
end do
do      n1=1,k2
  b(1 , n1 )=c(1, n1 )
end do
end

integer,parameter:: k1=5,k2=3
integer:: a(k1,k2),b(k1,k2)
a=reshape([(n,n=1,20*3)],[5,3])
b=reshape([(n,n=1,20*3)],[5,3])
call s1(k1,k2,a)
call s2(k1,k2,b)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
