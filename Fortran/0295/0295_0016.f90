subroutine s1(nn)
type xx
integer,allocatable::a(:),aa(:,:)
complex,allocatable::c(:),cc(:,:)
integer,allocatable::e(:,:,:),ee
complex,allocatable::f(:,:,:),ff
end type
type(xx)::v(2)
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
integer::ee,e(2,3,2)
complex::ff,f(2,3,2)
n=2;k=3;kk=2
allocate(v(kk)%f(2,3,2),v(kk)%ff,v(kk)%c(2),v(kk)%cc(n,k))
if (nn==1)then 
v(kk)%c=(4,5)
v(kk)%cc=(2,3)
v(kk)%f=(4,5)
v(kk)%ff=(2,3)
endif
d=v(kk)%c
dd=v(kk)%cc
f=v(kk)%f
ff=v(kk)%ff
allocate(v(kk)%e(2,3,2),v(kk)%ee,v(kk)%a(2),v(kk)%aa(n,k))
if (nn==1)then 
v(kk)%a=1
v(kk)%aa=2
v(kk)%e=1
v(kk)%ee=2
endif
b=v(kk)%a
bb=v(kk)%aa
e=v(kk)%e
ee=v(kk)%ee
if (any(v(kk)%a/=1))print *,101,v(kk)%a
if (any(b/=1))print *,102,b
if (any(v(kk)%aa/=2))print *,103,v(kk)%aa
if (any(bb/=2))print *,104,bb
if (any(abs(v(kk)%c-(4,5))>0.0001))print *,201,v(kk)%c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(v(kk)%cc-(2,3))>0.0001))print *,203,v(kk)%cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
if (any(v(kk)%e/=1))print *,301,v(kk)%e
if (any(e/=1))print *,302,e
if (   (v(kk)%ee/=2))print *,303,v(kk)%ee
if (   (ee/=2))print *,304,ee
if (any(abs(v(kk)%f-(4,5))>0.0001))print *,401,v(kk)%f
if (any(abs(f-(4,5))>0.0001))print *,402,f
if (   (abs(v(kk)%ff-(2,3))>0.0001))print *,403,v(kk)%ff
if (   (abs(ff-(2,3))>0.0001))print *,404,ff
end
call s1(1)
print *,'pass'
end
