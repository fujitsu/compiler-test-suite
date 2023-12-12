module mmm
type tt
integer,pointer::p(:)
integer,pointer::t(:)
end type
type(tt)::sss
end
use mmm
type(tt)::lll
lll=f3()
if (any(lll%p/=[1,3])) print *,101
print *,'OK'
contains
function f3() result(ttt)
use mmm
type(tt)::ttt
allocate(sss%t(3))
sss%t=(/1,2,3/)
ttt%p=>sss%t(::2)
end function f3
end
