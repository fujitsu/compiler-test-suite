module m1
  type x
   integer:: d1
   integer,allocatable:: a1(:)
   integer,allocatable:: a2(:)
   integer:: d2
  end type
type(x),allocatable:: x1,x2
contains
 subroutine set(d1,n)
type(x),allocatable:: d1
select case(n)
  case(1)
   allocate(d1)
   allocate(d1%a1(2),source=[1,2])
   allocate(d1%a1(3),source=[11,12,13])
   d1%d1=-1
   d1%d2=-2
   d1%d1=-11
   d1%d2=-12
  case(2)
   allocate(d1)
   allocate(d1%a1(101:101),source=[111])
   d1%d1=1
   d1%d2=2
end select
end subroutine
subroutine s0
call s1(x1,x2)
end subroutine
subroutine s1(x1,x2)
type(x),allocatable:: x1,x2
call set(x2,2)
x1=x2
if (.not.allocated(x1)) print *,120
if (.not.allocated(x2)) print *,121
if (loc(x1)==loc(x2)) print *,122
if (.not.allocated(x1%a1)) print *,132
if (     allocated(x1%a2)) print *,133
if (     lbound(x1%a1,1)/=101) print *,141
if (     ubound(x1%a1,1)/=101) print *,142
if (loc(x1%a1)==loc(x2%a1)) print *,150
if (x1%d1/=1) print *,160
if (x1%d2/=2) print *,161
if (x1%a1(101)/=111) print *,163
end subroutine
end 
use m1
call s0
print *,'pass'
end
