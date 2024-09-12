module m1
 type x
   integer,pointer::p1(:)
 end type
 integer,pointer::p1(:)
integer::n=2
 contains
subroutine s1(w8)
type (x),pointer:: w8(:)
allocate(w8(2:3))
w8(n+1)%p1(2:)=>p1
if (lbound(w8(3)%p1,1)/=2)print *,008101,lbound(w8(3)%p1)
if (any(lbound(w8(3)%p1)/=2))print *,008102,lbound(w8(3)%p1)
if (ubound(w8(3)%p1,1)/=25)print *,008103,ubound(w8(3)%p1)
if (any(ubound(w8(3)%p1)/=25))print *,008104,ubound(w8(3)%p1)
end subroutine
subroutine set
allocate(p1(24));p1=1
end subroutine
end

use m1
type (x),pointer:: w8(:)
call set
call       s1(w8)
print *,'pass'
end
