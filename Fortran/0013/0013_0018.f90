module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
contains
function f3() result(ttt)
type(tt)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end function f3
end
subroutine s1
use mmm
type rr
type(tt)::lll
end type
type(rr):: v
v  =rr(f3())
if (v%lll%p(2)/=3) print *,201
end subroutine
call s1
print *,'OK'
end
