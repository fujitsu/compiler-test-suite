module m1
  type x
   integer:: d1
   integer,allocatable:: a1(:)
   integer,allocatable:: a2(:)
   integer:: d2
  end type
type(x),allocatable:: x1(:),x2(:)
contains
 subroutine set(d1,n)
type(x),allocatable:: d1(:)
select case(n)
  case(1)
   allocate(d1(2))
   allocate(d1(1)%a1(2),source=[1,2])
   allocate(d1(2)%a1(3),source=[11,12,13])
   d1(1)%d1=-1
   d1(1)%d2=-2
   d1(2)%d1=-11
   d1(2)%d2=-12
  case(2)
   allocate(d1(11:12))
   allocate(d1(12)%a1(101:101),source=[111])
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
if (ubound(x1,1)/= 2) print *,100,ubound(x1,1)
call set(x2,2)
x1=x2
if (lbound(x1,1)/=1) print *,101,lbound(x1,1)
if (ubound(x1,1)/=2) print *,102,ubound(x1,1)
if (lbound(x2,1)/=11) print *,111,lbound(x2,1)
if (ubound(x2,1)/=12) print *,112,ubound(x2,1)
if (.not.allocated(x1)) print *,120
if (.not.allocated(x2)) print *,121
if (loc(x1)==loc(x2)) print *,122
if (     allocated(x1(1)%a1)) print *,130
if (     allocated(x1(1)%a2)) print *,131
if (.not.allocated(x1(2)%a1)) print *,132
if (     allocated(x1(2)%a2)) print *,133
if (     lbound(x1(2)%a1,1)/=101) print *,141
if (     ubound(x1(2)%a1,1)/=101) print *,142
if (loc(x1(2)%a1)==loc(x2(12)%a1)) print *,150
if (x1(1)%d1/=1) print *,160
if (x1(1)%d2/=2) print *,161
if (x1(2)%d1/=11) print *,162
if (x1(2)%a1(101)/=111) print *,163
if (x1(2)%d2/=12) print *,164
end 
call s1
print *,'pass'
end
