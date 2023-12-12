module m1
integer,pointer,dimension(:,:,:):: p
integer::n1=1,n2=500,n3=1,n4=1000,n5=1,n6=1000
contains
integer function   f(array,k1,k2,k3,k4,k5,k6)
integer,dimension(k1:k2,k3:k4,k5:k6),intent(in),optional:: array
f=sum(array)
end function
subroutine s1
allocate(p(n1:n2,n3:n4,n5:n6))
p=1
end subroutine
end

subroutine s
use m1
integer::a
do nn=1,10
call s1
a=f(p,n1,n2,n3,n4,n5,n6)
if (a/=n2*n4*n6) print *,101,a,n2*n4*n6
deallocate(p)
end do
end 

call s
print *,'OK'
end

