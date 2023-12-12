module m1
parameter( n1=100,n2=100 )
integer:: p(n1,n2)

contains
subroutine s1
integer:: i(n1,n2)
i= p
forall (k=1:n2) i(:,k) = i(:,k)+1 
if (i(1,1)/=2 .or. i(10,1)/=11) print *,101
end subroutine

subroutine s2
integer:: i(n1,n2)
integer,allocatable:: temp(:,:)
i= p
allocate(temp(n1,n2))
do k=1,n2
 temp(:,k)=i(:,k)+1
end do
do k=1,n2
 i(:,k)=temp(:,k)
end do
if (i(1,1)/=2 .or. i(10,1)/=11) print *,102
end subroutine
end

use m1
p= reshape([(k,k=1,n1*n2)],[n1,n2])
call s1
call s2
print *,'OK'
end
