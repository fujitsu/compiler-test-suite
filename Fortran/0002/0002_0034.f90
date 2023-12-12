module m1
integer,parameter::n1=1,n2=50,n3=1,n4=10,n5=1,n6=10
integer,dimension(:,:,:),pointer  :: p
integer(8)::pp
contains
integer function   f(array,k1,k2,k3,k4,k5,k6,kk)
integer,dimension(k1:k2,k3:k4,k5:k6),intent(in),optional:: array
f=sum(array)
if (kk==1) then
if (pp==loc(array)) print *,301
else
if (pp/=loc(array)) print *,302
endif
end function

subroutine s(b)
integer::a
integer,pointer   ,dimension(:,:,:):: b
do nn=1,3
pp=loc(b)
a=f(b(:,:,::2),n1,n2/2,n3,n4,n5,n6,1) + &
  f(b(:,:,:),n1,n2,n3,n4,n5,n6,0)     + &
  f(b       ,n1,n2,n3,n4,n5,n6,0)
if (a/=n2*n4*n6  + & 
       n2*n4*n6/2+ &
       n2*n4*n6  ) print *,102,a,n2*n4*n6*2 + n2*n4*n6/2
end do
end subroutine
end 

use m1
allocate(p(n2,n4,n6),source=1)
call s(p)
print *,'OK'
end

