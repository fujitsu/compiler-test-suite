module m1
integer,parameter::c(3,3,3,3)=reshape([(k,k=1,9*9)],[3,3,3,3])
end
subroutine s1(k1,k2)
use m1
common //n1,n2,n3,n4,n5
integer,allocatable::a1(:,:,:,:)
integer,allocatable::a2(:,:,:,:)
integer,allocatable::a3(:,:,:,:)
integer,allocatable::a4(:,:,:,:)
integer,allocatable::a5(:,:,:,:)
pointer(n1,p1)
pointer(n2,p2)
pointer(n3,p3)
pointer(n4,p4)
pointer(n5,p5)
allocate(a1(3,3,3,3),source=c)
allocate(a2(3,3,3,3),source=c)
allocate(a3(3,3,3,3),source=c)
allocate(a4(3,3,3,3),source=c)
allocate(a5(3,3,3,3),source=c)
n1=loc(a1(:,:,:,k2))
n2=loc(a2(:,:,:,k2))
n3=loc(a3(:,:,k1,1))
n4=loc(a4(:,:,:,k2))
n5=loc(a5(:,:,:,k2))
call ss(a1(:,:,:,k2),a2(:,:,:,k2),a3(:,:,k1,:),a4(:,:,:,k2),a5(:,:,:,k2))
end
subroutine ss(b1,b2,b3,b4,b5)
pointer(n1,p1)
pointer(n2,p2)
pointer(n3,p3)
pointer(n4,p4)
pointer(n5,p5)
common //n1,n2,n3,n4,n5
integer::b1(27),b2(27),b3(27),b4(27),b5(27)
if (n1/=loc(b1)) print *,101,n1,loc(b1)
if (n2/=loc(b2)) print *,102
if (n3==loc(b3)) print *,103
if (n4/=loc(b4)) print *,104
if (n5/=loc(b5)) print *,105
end
call s1(2,2)
print *,'pass'
end
