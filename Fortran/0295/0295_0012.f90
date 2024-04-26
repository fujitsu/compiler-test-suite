subroutine s1(nn)
type xx
integer,allocatable::a(:),aa(:,:)
complex,allocatable::c(:),cc(:,:)
integer,allocatable::e(:,:,:),ee
complex,allocatable::f(:,:,:),ff
end type
type(xx)::v
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
integer::ee,e(2,3,2)
complex::ff,f(2,3,2)
n=2;k=3
allocate(v%f(2,3,2),v%ff,v%c(2),v%cc(n,k))
if (nn==1)then 
v%c=(4,5)
v%cc=(2,3)
v%f=(4,5)
v%ff=(2,3)
endif
d=v%c
dd=v%cc
f=v%f
ff=v%ff
allocate(v%e(2,3,2),v%ee,v%a(2),v%aa(n,k))
if (nn==1)then 
v%a=1
v%aa=2
v%e=1
v%ee=2
endif
b=v%a
bb=v%aa
e=v%e
ee=v%ee
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
end
call s1(1)
print *,'pass'
end
