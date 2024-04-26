module m1
integer,parameter:: k1=2,k2=2,k3=2
integer:: a(k1,k2,k3+1,k1)
integer:: b(k1,k2,k3+1,k1)
contains
subroutine s1(k1,k2,k3)
forall (n0=2:k1,n1=1:k2,n2=1:k3)
  a(: , n1, n2+1 ,:)=a(: , n1 , n2 ,:)+(n1+n2)
end forall

end subroutine
subroutine s2(k1,k2,k3)
real(8) :: c(k1,k2,k3,k1)

do      n2=1,k3
do      n1=1,k2
do      n0=2,k2
  c(: , n1 , n2,:)=b(:, n1 , n2,:  )+(n1+n2)
end do
end do
end do
do      n2=1,k3
do      n1=1,k2
do      nn=1,k2
  b(: , n1 , n2+1,:)=c(:, n1 , n2,: )
end do
end do
end do
end subroutine
end
use m1
a=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
b=reshape([(n,n=1,25*3)],[k1,k2,k3+1,k1])
call s1(k1,k2,k3)
call s2(k1,k2,k3)
if (any(a/=b)) then
print *,101
print *,a
print *,b
endif
print *,'pass'
end
