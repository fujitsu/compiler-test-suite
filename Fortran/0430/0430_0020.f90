module m1
contains
subroutine s07
integer::p0
pointer::p0
contiguous::p0
  dimension p0(:)
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s06
pointer::p0
integer::p0
contiguous::p0
  dimension p0(:)
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s05
pointer::p0
contiguous::p0
integer::p0
  dimension p0(:)
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s04
contiguous::p0
integer::p0
pointer::p0
  dimension p0(:)
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s03
contiguous::p0
pointer::p0
integer::p0
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
  dimension p0(:)
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s02
integer::p0
contiguous::p0
pointer::p0
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
  dimension p0(:)
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine s01
integer,contiguous,pointer::p0
type x0
    integer:: t0(2)=1
end type
type(x0),target:: tt
  dimension p0(:)
p0=>tt%t0
   call ss(p0)
end subroutine
subroutine ss(x)
 integer::x(:)
if (any(x/=1)) print *,101
end subroutine
end

use m1
call s01
call s02
call s03
call s04
call s05
call s06
call s07
print *,'pass'
end
