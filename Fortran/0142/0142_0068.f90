subroutine s1(k1,k2,k3,a)
integer :: a(k1,k3,k3,k3,k3,k2+1)

forall (n1=1:k2)
  a(: , :,:,:,:,n1+1)=a(: ,:,:,:,:,n1)+1 
end forall

end
subroutine s2(k1,k2,k3,b)
integer :: b(k1,k3,k3,k3,k3,k2+1)
integer :: c(k1,k3,k3,k3,k3,k2)

do      n1=1,k2
  c(: , :,:,:,:,n1)=b(:, :,:,:,:,n1)+1
end do
do      n1=1,k2
  b(: , :,:,:,:,n1+1)=c(:, :,:,:,:,n1)
end do
end

integer,parameter:: k1=5,k2=3,k3=2
integer:: a(k1,k3,k3,k3,k3,k2+1),b(k1,k3,k3,k3,k3,k2+1)
a=reshape([(n,n=1,20*30)],[k1,k3,k3,k3,k3,k2+1])
b=reshape([(n,n=1,20*30)],[k1,k3,k3,k3,k3,k2+1])
call s1(k1,k2,k3,a)
call s2(k1,k2,k3,b)
if (any(a/=b)) then 
print *,101
print *,a
print *,b
endif
print *,'pass'
end
