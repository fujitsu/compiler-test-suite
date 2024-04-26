module m1
 type x
  integer:: x1
  integer,allocatable:: x2
  integer,allocatable:: x3(:)
  integer:: x4
end type
integer,allocatable:: a1(:)
end
subroutine s1
use m1
type(x),allocatable:: sx1,sx2
type(x),allocatable,dimension(:):: ax1,ax2
integer,parameter::a0(-2:-1)=[3,4]

a1=a0
if (any(lbound(a1)/=-2)) print *,401
if (any(ubound(a1)/=-1)) print *,402
allocate(sx1)
sx1%x1=1
sx1%x2=2
sx1%x3=a1
sx1%x4=5
call chk(sx1,0)
allocate(ax1(-2:-1))
ax1=sx1
call chk(ax1(-2),0)
call chk(ax1(-1),0)
call add(ax1(-1),1)
ax2=ax1
call chk(ax2(-2),0)
call chk(ax2(-1),1)
if (any(lbound(ax2)/=-2)) print *,411
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
if (sx%x1/=1+k) print *,1011,sx%x1
if (sx%x2/=2+k) print *,1012,sx%x2
if (sx%x3(-2)/=3+k) print *,1013,sx%x3(-2)
if (sx%x3(-1)/=4+k) print *,1014,sx%x3(-1)
if (sx%x4/=6) print *,1015,sx%x4
end 
subroutine chk(sx,k)
use m1
type(x),intent(in):: sx
if (sx%x1/=1+k) print *,1001,sx%x1
if (sx%x2/=2+k) print *,1002,sx%x2
if (sx%x3(-2)/=3+k) print *,1003,sx%x3(-2)
if (sx%x3(-1)/=4+k) print *,1004,sx%x3(-1)
if (sx%x4/=5+k) print *,1005,sx%x4
end 
