module m1
parameter( n1=100,n2=100 )
integer:: p(n1,n2+1)

contains
subroutine s1(i)
integer:: i(n1,n2+1)
i= p
forall (k=1:n2) 
 i(:,k+1) = i(:,k)+1 
end forall
end subroutine

subroutine s2(i)
integer:: i(n1,n2+1)
integer,allocatable:: temp(:,:)
i= p
allocate(temp(n1,n2))
do k=1,n2
 temp(:,k)=i(:,k)+1
end do
do k=1,n2
 i(:,k+1)=temp(:,k)
end do
end subroutine
end

use m1
integer:: i1(n1,n2+1),i2(n1,n2+1)
p= reshape([(k,k=1,(n1)*(n2+1))],[n1,n2+1])
call s1(i1)
call s2(i2)
if (any(i1/=i2)) print *,101
print *,'OK'
end
