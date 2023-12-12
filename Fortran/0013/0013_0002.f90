module mmm
type tt
integer,pointer::p(:)
integer,pointer::t(:)
end type
integer(8):: addr
end
use mmm
type(tt)::lll,nnn
lll=f3()
if (any(lll%p/=[1,3])) print *,901
nnn=lll
call ss
if (any(nnn%p/=[1,3])) print *,901
kk =    nnn%p(2)
if (kk/=3) print *,801
print *,'OK'
contains
function f3() result(ttt)
use mmm
type(tt)::ttt
allocate(ttt%t(3))
ttt%t=(/1,2,3/)
ttt%p=>ttt%t(::2)
end function f3
subroutine ss
end subroutine
end
