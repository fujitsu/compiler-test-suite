module m1
integer,pointer,dimension(:,:,:):: p1,p2,pp2
integer,parameter::n2=10,n4=10,n6=10
contains
subroutine       sub(a1,a2,k2,k4,k6,k,ik1,ik2)
integer,dimension(k2,k4,k6),intent(in),optional:: a1
integer,dimension(k2,k4,k6),intent(in),optional:: a2
k=sum(a1)+sum(a2)
if (ik1==0) then
  if (loc(p1)/=loc(a1)) print *,101,k
else
  if (loc(p1)==loc(a1)) print *,102,k
endif
if (ik2==0) then
  if (loc(p2)/=loc(a2)) print *,201,k
else
  if (loc(p2)==loc(a2)) print *,202,k
endif
end subroutine
end

subroutine s
use m1
integer::a
allocate(p1(n2,n4,n6))
p1=1
k1=0
allocate(pp2(n2,n4,n6))
p2=>pp2(:,:,:)
p2=1
k2=0
 call sub(p1,p2,n2,n4,n6,a,k1,k2)
if (a/=n2*n4*n6+n2*n4*n6) print *,201,a,n2*n4*n6+n2*n4*n6
end 

call s
print *,'OK'
end

