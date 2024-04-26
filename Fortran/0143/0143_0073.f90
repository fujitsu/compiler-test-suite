subroutine s1(k1,k2,k3,a)
complex(8) :: a(k1,k2,k3)

forall (n1=1:k2,n2=1:k3)
  a(: , n1, n2 )=a(: , n1 , n2 )+cmplx(n1+n2,n1+n2,8)
end forall

end
subroutine s2(k1,k2,k3,b)
complex(8) :: b(k1,k2,k3)
complex(8) :: c(k1,k2,k3)

do      n2=1,k3
do      n1=1,k2
  c(: , n1 , n2)=b(:, n1 , n2  )+cmplx(n1+n2,n1+n2,8)
end do
end do
do      n2=1,k3
do      n1=1,k2
  b(: , n1 , n2)=c(:, n1 , n2 )
end do
end do
end

integer,parameter:: k1=5,k2=3,k3=4
complex(8):: a(k1,k2,k3),b(k1,k2,k3)
a=cmplx(reshape([(n,n=1,20*3)],[5,3,4]),reshape([(n,n=1,20*3)],[5,3,4]),8)
b=cmplx(reshape([(n,n=1,20*3)],[5,3,4]),reshape([(n,n=1,20*3)],[5,3,4]),8)
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(abs(a-b)>0.0001)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
