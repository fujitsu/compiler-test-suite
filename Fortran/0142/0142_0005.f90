subroutine s1(k1,k2,a,b,c)
integer:: a(k1,k2+1),b(k1,k2+1),c(k1,k2+1)

forall (j1=1:k2)
  a(:,j1+1)=a(2,2   )+j1
end forall

do      j1=1,k2
  c(:,j1+1)=b(2,2   )+j1
end do     
do      j1=1,k2
  b(:,j1+1)= c(:,j1+1)
end do     
end

integer,parameter:: k1=5,k2=3
integer:: a(k1,k2+1),b(k1,k2+1),c(k1,k2+1)
a=reshape([(n,n=1,20)],[5,4])
b=reshape([(n,n=1,20)],[5,4])
call s1(k1,k2,a,b,c)
if (any(a/=b)) print *,101
print *,'pass'
end
