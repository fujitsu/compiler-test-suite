module m1
 type x
  integer:: x1
  integer,allocatable:: x2
  integer,allocatable:: x3(:,:)
  integer:: x4
  integer,allocatable:: x5(:,:)
end type
integer,allocatable:: a1(:,:)
end
subroutine s1
use m1
type(x),allocatable:: sx1,sx2
type(x),allocatable,dimension(:,:):: ax1,ax2
integer,parameter::a0(-2:-1,-3:-1)=reshape([3,4,5,6,7,8],[2,3])

a1=a0
if (any(lbound(a1)/=-[2,3])) print *,401
if (any(ubound(a1)/=-1)) print *,402
allocate(sx1)
sx1%x1=1
sx1%x2=2
sx1%x3=a1
sx1%x4=5
a1=a1+3
sx1%x5=a1
call chk(sx1,0)
allocate(ax1(-2:-1,-3:-1))
ax1=sx1
do kk=-3,-1
call chk(ax1(-2,kk),0)
call chk(ax1(-1,kk),0)
call add(ax1(-1,kk),1)
end do
ax2=ax1
do kk=-3,-1
call chk(ax2(-2,kk),0)
call chk(ax2(-1,kk),1)
end do
if (any(lbound(ax2)/=[-2,-3])) print *,411
if (any(ubound(ax2)/=-1)) print *,412
end
use m1
call s1
print *,'pass'
end
subroutine add(sx,k)
use m1
type(x):: sx
sx%x1=sx%x1+k
sx%x2=sx%x2+k
sx%x3=sx%x3+k
sx%x4=sx%x4+k
sx%x5=sx%x5+k
if (sx%x1/=1+k) print *,1011,sx%x1
if (sx%x2/=2+k) print *,1012,sx%x2
if (sx%x3(-2,-3)/=3+k) print *,1013,sx%x3(-2,-3)
if (sx%x3(-1,-3)/=4+k) print *,1014,sx%x3(-1,-3)
if (sx%x3(-2,-2)/=5+k) print *,1113,sx%x3(-2,-2)
if (sx%x3(-1,-2)/=6+k) print *,1114,sx%x3(-1,-2)
if (sx%x3(-2,-1)/=7+k) print *,1213,sx%x3(-2,-1)
if (sx%x3(-1,-1)/=8+k) print *,1214,sx%x3(-1,-1)
if (sx%x4/=6) print *,1015,sx%x4
if (sx%x5(-2,-3)/=6+k) print *,1015,sx%x5(-2,-3)
if (sx%x5(-1,-3)/=7+k) print *,1016,sx%x5(-1,-3)
if (sx%x5(-2,-2)/=8+k) print *,1115,sx%x5(-2,-2)
if (sx%x5(-1,-2)/=9+k) print *,1116,sx%x5(-1,-2)
if (sx%x5(-2,-1)/=10+k) print *,1215,sx%x5(-2,-1)
if (sx%x5(-1,-1)/=11+k) print *,1216,sx%x5(-1,-1)
end 
subroutine chk(sx,k)
use m1
type(x),intent(in):: sx
if (sx%x1/=1+k) print *,1001,sx%x1
if (sx%x2/=2+k) print *,1002,sx%x2
if (sx%x3(-2,-3)/=3+k) print *,2003,sx%x3(-2,-3)
if (sx%x3(-1,-3)/=4+k) print *,2004,sx%x3(-1,-3)
if (sx%x3(-2,-2)/=5+k) print *,2013,sx%x3(-2,-2)
if (sx%x3(-1,-2)/=6+k) print *,2014,sx%x3(-1,-2)
if (sx%x3(-2,-1)/=7+k) print *,2023,sx%x3(-2,-1)
if (sx%x3(-1,-1)/=8+k) print *,2024,sx%x3(-1,-1)
if (sx%x4/=5+k) print *,2005,sx%x4
if (sx%x5(-2,-3)/=6+k) print *,2006,sx%x5(-2,-3)
if (sx%x5(-1,-3)/=7+k) print *,2007,sx%x5(-1,-3)
if (sx%x5(-2,-2)/=8+k) print *,2016,sx%x5(-2,-2)
if (sx%x5(-1,-2)/=9+k) print *,2017,sx%x5(-1,-2)
if (sx%x5(-2,-1)/=10+k) print *,2026,sx%x5(-2,-1)
if (sx%x5(-1,-1)/=11+k) print *,2027,sx%x5(-1,-1)
end 
