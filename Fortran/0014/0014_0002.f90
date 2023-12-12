module mmm
type tt
integer,pointer::t(:)
integer,pointer::p(:)
end type
end
use mmm
type(tt)::lll
lll=f3()
 if (lll%p(1).ne.1) print *,'err 1a'
 if (lll%p(2).ne.3) print *,'err 2a'
print *, 'pass'
contains
function f3() result(ttt)
use mmm
type(tt)::ttt
allocate(ttt%t(3))
ttt%t=(/1,2,3/)
 if (ttt%t(1).ne.1) print *,'err 1b'
 if (ttt%t(3).ne.3) print *,'err 2b'
ttt%p=>ttt%t(::2)
 if (ttt%p(1).ne.1) print *,'err 1c'
 if (ttt%p(2).ne.3) print *,'err 2c'
end function f3
end
