subroutine s1(nn)
type xx
integer,allocatable::a(:),aa(:,:)
complex,allocatable::c(:),cc(:,:)
end type
type(xx)::v
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
n=2;k=3
allocate(v%c(2),v%cc(n,k))
if (nn==1)then 
v%c=(4,5)
v%cc=(2,3)
endif
d=v%c
dd=v%cc
allocate(v%a(2),v%aa(n,k))
if (nn==1)then 
v%a=1
v%aa=2
endif
b=v%a
bb=v%aa
if (any(v%a/=1))print *,101,v%a
if (any(b/=1))print *,102,b
if (any(v%aa/=2))print *,103,v%aa
if (any(bb/=2))print *,104,bb
if (any(abs(v%c-(4,5))>0.0001))print *,201,v%c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(v%cc-(2,3))>0.0001))print *,203,v%cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
end
call s1(1)
print *,'pass'
end
