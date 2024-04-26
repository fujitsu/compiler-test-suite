subroutine s1(nn)
type x
integer::x1
integer,allocatable::a(:),aa(:,:)
end type
type (x),pointer    ::y1(:),y2(:),y3(:)
integer,allocatable::a(:),aa(:,:)
complex,allocatable::c(:),cc(:,:)
integer::b(2),bb(2,3)
complex::d(2),dd(2,3)
n=2;k=3
allocate(c(2),y1(2),y2(2),y3(2),cc(n,k))
if (allocated(y1(2)%a))print *,401
if (allocated(y1(2)%aa))print *,402
if (allocated(y2(2)%a))print *,501
if (allocated(y2(2)%aa))print *,502
if (allocated(y3(2)%a))print *,601
if (allocated(y3(2)%aa))print *,602
if (nn==1)then 
c=(4,5)
cc=(2,3)
endif
d=c
dd=cc
allocate(a(2),aa(n,k))
if (nn==1)then 
a=1
aa=2
endif
b=a
bb=aa
if (any(a/=1))print *,101,a
if (any(b/=1))print *,102,b
if (any(aa/=2))print *,103,aa
if (any(bb/=2))print *,104,bb
if (any(abs(c-(4,5))>0.0001))print *,201,c
if (any(abs(d-(4,5))>0.0001))print *,202,d
if (any(abs(cc-(2,3))>0.0001))print *,203,cc
if (any(abs(dd-(2,3))>0.0001))print *,204,dd
end
call s1(1)
print *,'pass'
end
