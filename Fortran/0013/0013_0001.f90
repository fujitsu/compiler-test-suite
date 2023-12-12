module mmm
type tt
integer,pointer::p(:)
integer,pointer::t(:)
end type
end
use mmm
type(tt)::lll
lll=f3()
if (any(lll%p/=[1,3])) print *,301
print *,'OK'
contains
function f3() result(ttt)
use mmm
type(tt)::ttt
allocate(ttt%t(3))
ttt%t=(/1,2,3/)
ttt%p=>ttt%t(::2)
end function f3
end
