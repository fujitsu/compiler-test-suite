module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::ttt(1)
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
ttt(1)%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt)::lll
lll=ttt(1)
if (ttt(1)%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'pass'
end
