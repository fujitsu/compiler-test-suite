module m1
integer,pointer,dimension(:,:,:):: p
integer::n1=1,n2=50,n3=1,n4=10,n5=1,n6=10
integer(8)::pp
contains
integer function   f(array,k1,k2,k3,k4,k5,k6)
integer,dimension(k1:k2,k3:k4,k5:k6),intent(in),optional:: array
f=sum(array)
if (pp/=loc(array)) print *,301
end function
subroutine s1
allocate(p(n1:n2,n3:n4,n5:n6))
p=1
end subroutine

subroutine s(b)
integer::a
integer,intent(in),dimension(:,:,:):: b
do nn=1,3
pp=loc(b)
a=f(b,n1,n2,n3,n4,n5,n6)
if (a/=n2*n4*n6) print *,101,a,n2*n4*n6
end do
end subroutine
end 

use m1
call s1
call s(p)
deallocate(p)
print *,'OK'
end

