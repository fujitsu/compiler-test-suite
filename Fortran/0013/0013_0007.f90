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
type(tt)::lll
lll=f3()
if (any(lll%p/=[1,3])) print *,101
call z
contains
subroutine z
integer(8)::addr
end subroutine
subroutine w(kw)
type(tt)::kw
integer(8)::addr
end subroutine
end
call s1
print *,'OK'
end
