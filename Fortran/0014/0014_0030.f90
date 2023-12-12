module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
end
subroutine s1()
use mmm
type(tt)::lll
type(tt)::ttt
call f2
lll=ttt
if (ttt%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err'
contains
subroutine f2()
call f3(ttt)
end subroutine
end subroutine
subroutine f3(ttt)
use mmm
type(tt)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end subroutine
use mmm
call s1
print *,'pass'
end
