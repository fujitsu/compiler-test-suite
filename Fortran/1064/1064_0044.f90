module m1
  type x
   integer:: d1
   integer,allocatable:: a1(:)
   character(:),allocatable:: c1(:)
   character(:),allocatable:: c2
   integer,allocatable:: a2(:)
   integer:: d2
  end type
type(x),allocatable:: x1(:),x2(:)
contains
 subroutine set(d1,n)
type(x),allocatable:: d1(:)
select case(n)
  case(1)
   allocate(d1(3))
   allocate(d1(1)%a1(2),source=[1,2])
   allocate(d1(3)%a1(3),source=[11,12,13])
   allocate(d1(1)%c1(1),source=['1'])
   allocate(d1(2)%c1(2),source=['11','22'])
   allocate(d1(3)%c1(3),source=['111','222','333'])
   allocate(d1(1)%c2,source='1')
   allocate(d1(2)%c2,source='1')
   d1(1)%d1=-1
   d1(1)%d2=-2
   d1(2)%d1=-11
   d1(2)%d2=-12
   d1(3)%d1=-21
   d1(3)%d2=-22
  case(2)
   allocate(d1(11:12))
   allocate(d1(12)%a1(101:101),source=[111])
   allocate(d1(11)%c1(201:202),source=['11','22'])
   allocate(d1(12)%c1(301:301),source=['1'])
   allocate(d1(12)%c2,source='123')
   d1(11)%d1=1
   d1(11)%d2=2
   d1(12)%d1=11
   d1(12)%d2=12
end select
end subroutine
end
subroutine s1
use m1
call set(x1,1)
if (ubound(x1,1)/= 3) print *,100,ubound(x1,1)
call set(x2,2)
x1=x2
if (lbound(x1,1)/=11) print *,101,lbound(x1,1)
if (ubound(x1,1)/=12) print *,102,ubound(x1,1)
if (lbound(x2,1)/=11) print *,111,lbound(x1,1)
if (ubound(x2,1)/=12) print *,112,ubound(x1,1)
if (.not.allocated(x1)) print *,120
if (.not.allocated(x2)) print *,121
if (loc(x1)==loc(x2)) print *,122
if (     allocated(x1(11)%a1)) print *,130
if (     allocated(x1(11)%a2)) print *,131
if (.not.allocated(x1(11)%c1)) print *,1311
if (.not.allocated(x1(12)%c1)) print *,1312
if (     allocated(x1(11)%c2)) print *,13111
if (.not.allocated(x1(12)%c2)) print *,13121
if (len(x1(11)%c1)/=2) print *,1313
if (len(x1(12)%c1)/=1) print *,1314
if (len(x1(12)%c2)/=3) print *,1315
if (.not.allocated(x1(12)%a1)) print *,132
if (     allocated(x1(12)%a2)) print *,133
if (     lbound(x1(12)%a1,1)/=101) print *,141
if (     ubound(x1(12)%a1,1)/=101) print *,142
if (     lbound(x1(11)%c1,1)/=201) print *,1411
if (     ubound(x1(11)%c1,1)/=202) print *,1422
if (     lbound(x1(12)%c1,1)/=301) print *,1413
if (     ubound(x1(12)%c1,1)/=301) print *,1414
if (loc(x1(12)%a1)==loc(x2(12)%a1)) print *,150
if (loc(x1(12)%c1)==loc(x2(12)%c1)) print *,1501
if (loc(x1(12)%c2)==loc(x2(12)%c2)) print *,1502
if (x1(11)%d1/=1) print *,160
if (x1(11)%d2/=2) print *,161
if (any(x1(11)%c1/=['11','22'])) print *,1611
if (any(x1(12)%c1/=['1'])) print *,1612
if (   (x1(12)%c2/='123')) print *,1613
if (x1(12)%d1/=11) print *,162
if (x1(12)%a1(101)/=111) print *,163
if (x1(12)%d2/=12) print *,164
end 
call s1
print *,'pass'
end
