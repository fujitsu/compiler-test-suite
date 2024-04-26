module m1
type xx
integer,allocatable::a(:),aa(:,:)
complex,allocatable::c(:),cc(:,:)
integer,allocatable::e(:,:,:),ee
complex,allocatable::f(:,:,:),ff
integer,pointer::xa(:),xaa(:,:)
complex,pointer::xc(:),xcc(:,:)
integer,pointer::xe(:,:,:),xee
complex,pointer::xf(:,:,:),xff
end type
type(xx)::w
contains
subroutine s1(nn,v)
type(xx)::v
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
integer::ee,e(2,3,2)
complex::ff,f(2,3,2)
integer::xb(2),xbb(2,3)
complex::xd(2),xdd(2,3)
integer::xee,xe(2,3,2)
complex::xff,xf(2,3,2)
n=2;k=3
allocate(v%f(2,3,2),v%ff,v%c(2),v%cc(n,k))
allocate(v%xf(2,3,2),v%xff,v%xc(2),v%xcc(n,k))
if (nn==1)then 
v%c=(4,5)
v%cc=(2,3)
v%f=(4,5)
v%ff=(2,3)
v%xc=(4,5)
v%xcc=(2,3)
v%xf=(4,5)
v%xff=(2,3)
endif
d=v%c
dd=v%cc
f=v%f
ff=v%ff
xd=v%xc
xdd=v%xcc
xf=v%xf
xff=v%xff
allocate(v%e(2,3,2),v%ee,v%a(2),v%aa(n,k))
allocate(v%xe(2,3,2),v%xee,v%xa(2),v%xaa(n,k))
if (nn==1)then 
v%a=1
v%aa=2
v%e=1
v%ee=2
v%xa=1
v%xaa=2
v%xe=1
v%xee=2
endif
b=v%a
bb=v%aa
e=v%e
ee=v%ee
xb=v%xa
xbb=v%xaa
xe=v%xe
xee=v%xee
if (any(v%a/=1))print *,101,v%a
if (any(b/=1))print *,102,b
if (any(v%aa/=2))print *,103,v%aa
if (any(bb/=2))print *,104,bb
if (any(abs(v%c-(4,5))>0.0001))print *,201,v%c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(v%cc-(2,3))>0.0001))print *,203,v%cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
if (any(v%e/=1))print *,301,v%e
if (any(e/=1))print *,302,e
if (   (v%ee/=2))print *,303,v%ee
if (   (ee/=2))print *,304,ee
if (any(abs(v%f-(4,5))>0.0001))print *,401,v%f
if (any(abs(f-(4,5))>0.0001))print *,402,f
if (   (abs(v%ff-(2,3))>0.0001))print *,403,v%ff
if (   (abs(ff-(2,3))>0.0001))print *,404,ff
!
if (any(v%xa/=1))print *,101,v%xa
if (any(xb/=1))print *,102,xb
if (any(v%xaa/=2))print *,103,v%xaa
if (any(xbb/=2))print *,104,xbb
if (any(abs(v%xc-(4,5))>0.0001))print *,201,v%xc
if (any(abs(xd-(4,5))>0.0001))print *,202,xd
if (any(abs(v%xcc-(2,3))>0.0001))print *,203,v%xcc
if (any(abs(xdd-(2,3))>0.0001))print *,204,xdd
if (any(v%xe/=1))print *,301,v%xe
if (any(xe/=1))print *,302,xe
if (   (v%xee/=2))print *,303,v%xee
if (   (xee/=2))print *,304,xee
if (any(abs(v%xf-(4,5))>0.0001))print *,401,v%xf
if (any(abs(xf-(4,5))>0.0001))print *,402,xf
if (   (abs(v%xff-(2,3))>0.0001))print *,403,v%xff
if (   (abs(xff-(2,3))>0.0001))print *,404,xff
end subroutine
end
use m1
call s1(1,w)
print *,'pass'
end
