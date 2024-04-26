module m1
contains
subroutine s1(nn,a,aa,c,cc)
integer,pointer::a,aa(:,:)
complex,pointer::c,cc(:,:)
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
n=2;k=3
allocate(c,cc(n,k))
if (nn==1)then 
c=(4,5)
cc=(2,3)
endif
d=c
dd=cc
allocate(a,aa(n,k))
if (nn==1)then 
a=1
aa=2
endif
b=a
bb=aa
if (   (a/=1))print *,101,a
if (any(b/=1))print *,102,b
if (any(aa/=2))print *,103,aa
if (any(bb/=2))print *,104,bb
if (   (abs(c-(4,5))>0.0001))print *,201,c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(cc-(2,3))>0.0001))print *,203,cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
end subroutine
end
use m1
integer,pointer::a,aa(:,:)
complex,pointer::c,cc(:,:)
call s1(1,a,aa,c,cc)
print *,'pass'
end
