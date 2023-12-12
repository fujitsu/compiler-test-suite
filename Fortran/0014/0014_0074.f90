module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::ttt
end
subroutine s1(tttx)
use mmm
type(tt)::tttx
type(tt),allocatable::lll
allocate(lll,source=tttx)
if (tttx%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err'
end subroutine
subroutine f3
use mmm
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end subroutine
use mmm
call f3()
call s1(ttt)
print *,'pass'
end
