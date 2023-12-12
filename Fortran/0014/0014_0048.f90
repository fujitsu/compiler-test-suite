module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
end
subroutine s1(ttt)
use mmm
type(tt),save::lll
type(tt)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
lll=ttt
if (ttt%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err'
contains
subroutine f3
use mmm
end subroutine
end subroutine
use mmm
save
type(tt)::ttt
call s1(ttt)
print *,'pass'
end
