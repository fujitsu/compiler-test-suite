module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
integer,pointer::tu(:)
contains
subroutine f3() 
allocate(t(3))
t=(/1,2,3/)
tu=>t(::2)
end subroutine
end
subroutine s1
use mmm
type rr
type(tt)::lll
end type
type(rr):: v
v  =rr(tt(tu))
if (v%lll%p(2)/=3) print *,201
end subroutine
use mmm
call f3
call s1
print *,'OK'
end
