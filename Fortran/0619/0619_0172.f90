module m1
type x1
  integer::y1
  integer,pointer::y2(:)=>NULL()
  integer::y3
end type
type x2
  integer::y1
  integer,pointer::y2(:)
  integer::y3
end type
type x3
  integer::y1
  integer,allocatable::y2(:)
  integer::y3
end type
type x4
  integer::y1
  integer::y2
  integer::y3
end type
type x5
  integer::y1=1
  integer,pointer::y2(:)
  integer::y3
end type
type x6
  integer::y1
  integer,pointer::y2(:)=>NULL()
  integer::y3
  integer,allocatable::y4(:)
end type
contains
recursive subroutine s1()
type(x1),pointer::p1
type(x2),pointer::p2
type(x3),pointer::p3
type(x4),pointer::p4
type(x5),pointer::p5
type(x6),pointer::p6
type(x1)        ::v1
type(x2)        ::v2
type(x3)        ::v3
type(x4)        ::v4
type(x5)        ::v5
type(x6)        ::v6
allocate(p1)
allocate(p2)
allocate(p3)
allocate(p4)
allocate(p5)
allocate(p6)
if (associated(v1%y2))print *,101
if (associated(p1%y2))print *,102
if (allocated(v3%y2))print *,103
if (allocated(p3%y2))print *,104
if (associated(p6%y2))print *,105
if (allocated(p6%y4))print *,106
if (associated(v6%y2))print *,107
if (allocated(v6%y4))print *,108
if (v5%y1/=1)print *,109
if (p5%y1/=1)print *,110
end subroutine
end
use m1
call s1
print *,'pass'
end
