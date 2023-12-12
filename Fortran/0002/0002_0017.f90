module m1
integer,parameter::n1=1,n2=50,n3=1,n4=10,n5=1,n6=10
integer,dimension(n1:n2,n3:n4,n5:n6)          :: con=1
integer(8)::pp
contains
integer function   f(array,k1,k2,k3,k4,k5,k6,kk)
integer,dimension(k1:k2,k3:k4,k5:k6)           ,optional:: array
f=sum(array)
if (kk==1) then
if (pp==loc(array)) print *,301
else
if (pp/=loc(array)) print *,302
endif
end function

subroutine s(b)
integer::a
integer           ,dimension(:,:,:):: b
do nn=1,3
pp=loc(b)
a=f(b(::2,:,:),n1,n2/2,n3,n4,n5,n6,1)
if (a/=n2*n4*n6/2) print *,101,a,n2*n4*n6/2
a=f(b(:,:,:),n1,n2,n3,n4,n5,n6,0)
if (a/=n2*n4*n6  ) print *,102,a,n2*n4*n6
a=f(b       ,n1,n2,n3,n4,n5,n6,0)
if (a/=n2*n4*n6  ) print *,103,a,n2*n4*n6
end do
end subroutine
end 

use m1
call s(con)
print *,'OK'
end

