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
n=2;k=3
allocate(v(2)%f(2,3,2),v(2)%ff,v(2)%c(2),v(2)%cc(n,k))
if (nn==1)then 
v(2)%c=(4,5)
v(2)%cc=(2,3)
v(2)%f=(4,5)
v(2)%ff=(2,3)
endif
d=v(2)%c
dd=v(2)%cc
f=v(2)%f
ff=v(2)%ff
allocate(v(2)%e(2,3,2),v(2)%ee,v(2)%a(2),v(2)%aa(n,k))
if (nn==1)then 
v(2)%a=1
v(2)%aa=2
v(2)%e=1
v(2)%ee=2
endif
b=v(2)%a
bb=v(2)%aa
e=v(2)%e
ee=v(2)%ee
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
end
call s1(1)
print *,'pass'
end
