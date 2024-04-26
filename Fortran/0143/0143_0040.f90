module m1
integer,pointer:: a(:,:),b(:,:),c(:,:)
contains
subroutine s1(k1,k2)

forall (j1=1:k2)
  a(:,j1+1)=a(2,2   )+j1
end forall

do      j1=1,k2
  c(:,j1+1)=b(2,2   )+j1
end do     
do      j1=1,k2
  b(:,j1+1)= c(:,j1+1)
end do     
end subroutine
end

use m1
integer,parameter:: k1=5,k2=3
allocate(a(k1,k2+1),b(k1,k2+1),c(k1,k2+1))
a=reshape([(n,n=1,20)],[5,4])
b=reshape([(n,n=1,20)],[5,4])
call s1(k1,k2)
if (any(a/=b)) print *,101
print *,'pass'
end
