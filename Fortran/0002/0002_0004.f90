module m1
integer,pointer,dimension(:,:,:):: p,px
integer::n1=1,n2=10,n3=1,n4=10,n5=1,n6=5
integer(8)::pp,ppp(10)
contains
integer function   f(array,k1,k2,k3,k4,k5,k6,nn)
integer,dimension(k1:k2,k3:k4,k5:k6),intent(in),optional:: array
f=sum(array)
if (pp==loc(array)) print *,301
ppp(nn)=loc(array)
end function
subroutine s1
allocate(px(n1:n2,n3:n4,n5:n6))
p=>px(n1:n2:2,:,:)
p=1
end subroutine
end

subroutine s
use m1
integer::a
call s1
do nn=1,10
pp=loc(p)
a=f(p,n1,n2/2,n3,n4,n5,n6,nn)
if (a/=n2*n4*n6/2) print *,101,a,n2*n4*n6/2
end do
deallocate(px)
do k=2,10
 if (ppp(1)/=ppp(k)) print *,501,k,ppp(1),ppp(k)
end do
end 

call s
print *,'OK'
end

