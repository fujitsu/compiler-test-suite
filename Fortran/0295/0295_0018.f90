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
type(xx),pointer::v(:)
contains
subroutine s1(nn)
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
integer::ee,e(2,3,2)
complex::ff,f(2,3,2)
integer::xb(2),xbb(2,3)
complex::xd(2),xdd(2,3)
integer::xee,xe(2,3,2)
complex::xff,xf(2,3,2)
n=2;k=3
allocate(v(2)%f(2,3,2),v(2)%ff,v(2)%c(2),v(2)%cc(n,k))
allocate(v(2)%xf(2,3,2),v(2)%xff,v(2)%xc(2),v(2)%xcc(n,k))
if (nn==1)then 
v(2)%c=(4,5)
v(2)%cc=(2,3)
v(2)%f=(4,5)
v(2)%ff=(2,3)
v(2)%xc=(4,5)
v(2)%xcc=(2,3)
v(2)%xf=(4,5)
v(2)%xff=(2,3)
endif
d=v(2)%c
dd=v(2)%cc
f=v(2)%f
ff=v(2)%ff
xd=v(2)%xc
xdd=v(2)%xcc
xf=v(2)%xf
xff=v(2)%xff
allocate(v(2)%e(2,3,2),v(2)%ee,v(2)%a(2),v(2)%aa(n,k))
allocate(v(2)%xe(2,3,2),v(2)%xee,v(2)%xa(2),v(2)%xaa(n,k))
if (nn==1)then 
v(2)%a=1
v(2)%aa=2
v(2)%e=1
v(2)%ee=2
v(2)%xa=1
v(2)%xaa=2
v(2)%xe=1
v(2)%xee=2
endif
b=v(2)%a
bb=v(2)%aa
e=v(2)%e
ee=v(2)%ee
xb=v(2)%xa
xbb=v(2)%xaa
xe=v(2)%xe
xee=v(2)%xee
if (any(v(2)%a/=1))print *,101,v(2)%a
if (any(b/=1))print *,102,b
if (any(v(2)%aa/=2))print *,103,v(2)%aa
if (any(bb/=2))print *,104,bb
if (any(abs(v(2)%c-(4,5))>0.0001))print *,201,v(2)%c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(v(2)%cc-(2,3))>0.0001))print *,203,v(2)%cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
if (any(v(2)%e/=1))print *,301,v(2)%e
if (any(e/=1))print *,302,e
if (   (v(2)%ee/=2))print *,303,v(2)%ee
if (   (ee/=2))print *,304,ee
if (any(abs(v(2)%f-(4,5))>0.0001))print *,401,v(2)%f
if (any(abs(f-(4,5))>0.0001))print *,402,f
if (   (abs(v(2)%ff-(2,3))>0.0001))print *,403,v(2)%ff
if (   (abs(ff-(2,3))>0.0001))print *,404,ff
!
if (any(v(2)%xa/=1))print *,101,v(2)%xa
if (any(xb/=1))print *,102,xb
if (any(v(2)%xaa/=2))print *,103,v(2)%xaa
if (any(xbb/=2))print *,104,xbb
if (any(abs(v(2)%xc-(4,5))>0.0001))print *,201,v(2)%xc
if (any(abs(xd-(4,5))>0.0001))print *,202,xd
if (any(abs(v(2)%xcc-(2,3))>0.0001))print *,203,v(2)%xcc
if (any(abs(xdd-(2,3))>0.0001))print *,204,xdd
if (any(v(2)%xe/=1))print *,301,v(2)%xe
if (any(xe/=1))print *,302,xe
if (   (v(2)%xee/=2))print *,303,v(2)%xee
if (   (xee/=2))print *,304,xee
if (any(abs(v(2)%xf-(4,5))>0.0001))print *,401,v(2)%xf
if (any(abs(xf-(4,5))>0.0001))print *,402,xf
if (   (abs(v(2)%xff-(2,3))>0.0001))print *,403,v(2)%xff
if (   (abs(xff-(2,3))>0.0001))print *,404,xff
end subroutine
end
use m1
allocate(v(2))
call s1(1)
print *,'pass'
end
