module m1
integer,parameter::c(3,3,3,3)=reshape([(k,k=1,9*9)],[3,3,3,3])
end
subroutine s1(k1,k2)
use m1
common //n1,n2,n3,n4,n5
integer,pointer::a1(:,:,:,:)
integer,pointer::a2(:,:,:,:)
integer,pointer::a3(:,:,:,:)
integer,pointer::a4(:,:,:,:)
integer,pointer::a5(:,:,:,:)
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
n3=loc(a3(:,:,:, 2))
n4=loc(a4(:,:,:,k2))
n5=loc(a5(:,:,:,k2))
call s2(a1,a2,a3(:,:,:,k1),a4,a5)
contains
subroutine s2(a1,a2,a3,a4,a5)
integer::a1(3,3,3,3)
integer::a2(3,3,3,3)
integer::a4(3,3,3,3)
integer::a5(3,3,3,3)
integer::a3(:,:,:)
call ss(a1(:,:,:,k2),a2(:,:,:,k2),a3(:,:,:),a4(:,:,:,k2),a5(:,:,:,k2))
if (any(a1(:,:,:,2)/=c(3,:,:,:))) print *,2001
if (any(a2(:,:,:,2)/=c(3,:,:,:))) print *,2002
if (any(a3/=c(3,:,:,:))) print *,2003
if (any(a4(:,:,:,2)/=c(3,:,:,:))) print *,2004
if (any(a5(:,:,:,2)/=c(3,:,:,:))) print *,2005
end subroutine
end
subroutine ss(b1,b2,b3,b4,b5)
use m1
pointer(n1,p1)
pointer(n2,p2)
pointer(n3,p3)
pointer(n4,p4)
pointer(n5,p5)
common //n1,n2,n3,n4,n5
integer::b1(27),b2(27),b3(27),b4(27),b5(27)
if (n1/=loc(b1)) print *,101,n1,loc(b1)
if (n2/=loc(b2)) print *,102
if (n3/=loc(b3)) print *,103
if (n4/=loc(b4)) print *,104
if (n5/=loc(b5)) print *,105
if (any(b1/=[c(:,:,:,2)])) print *,1001
if (any(b2/=[c(:,:,:,2)])) print *,1002
if (any(b3/=[c(:,:,:,2)])) print *,1003
if (any(b4/=[c(:,:,:,2)])) print *,1004
if (any(b5/=[c(:,:,:,2)])) print *,1005
b1=[c(3,:,:,:)]
b2=[c(3,:,:,:)]
b3=[c(3,:,:,:)]
b4=[c(3,:,:,:)]
b5=[c(3,:,:,:)]
end
call s1(2,2)
print *,'pass'
end
