module m1
integer,parameter::n1=1,n2=50,n3=1,n4=10,n5=1,n6=10
integer,dimension(:,:,:),pointer  :: p
integer(8)::pp
contains
integer function   f(&
  array1, k01,k02,k03,k04,k05,k06,k0k, &
  array2, k11,k12,k13,k14,k15,k16,k1k, &
  array3, k21,k22,k23,k24,k25,k26,k2k)
integer,dimension(k01:k02,k03:k04,k05:k06),intent(in),optional:: array1
integer,dimension(k11:k12,k13:k14,k15:k16),intent(in),optional:: array2
integer,dimension(k21:k22,k23:k24,k25:k26),intent(in),optional:: array3
f=sum(array1)+sum(array2)+sum(array3)
if (k0k==1) then
if (pp==loc(array1)) print *,301
else
if (pp/=loc(array1)) print *,302
endif
if (k1k==1) then
if (pp==loc(array2)) print *,311
else
if (pp/=loc(array2)) print *,312
endif
if (k2k==1) then
if (pp==loc(array3)) print *,321
else
if (pp/=loc(array3)) print *,322
endif
end function

subroutine s(b,p1,p2,p3)
integer::a
integer,pointer   ,dimension(:,:,:):: b
integer,pointer   ,dimension(:,:,:):: p1
integer,pointer   ,dimension(:,:,:):: p2
integer,pointer   ,dimension(:,:,:):: p3
do nn=1,3
pp=loc(b)
a=f(p2,n1,n2/2 ,n3,n4,n5,n6,1,   &
    p3      ,n1,n2,n3,n4,n5,n6,0,      &
    p1      ,n1,n2/2,n3,n4,n5,n6,1)
if (a/=n2*n4*n6/2+ & 
       n2*n4*n6/2+ &
       n2*n4*n6  ) print *,102,a,n2*n4*n6*1 + n2*n4*n6/2*2
end do
end subroutine
end 

use m1
integer,pointer   ,dimension(:,:,:):: p1
integer,pointer   ,dimension(:,:,:):: p2
integer,pointer   ,dimension(:,:,:):: p3
allocate(p(n2,n4,n6),source=1)
p1=>p(::2,:,:)
p2=>p(::2,:,:)
p3=>p
call s(p,p1,p2,p3)
print *,'OK'
end

