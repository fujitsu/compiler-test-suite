
module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
end
subroutine s1()
use mmm
type(tt),allocatable::lll
type(tt),allocatable::ttt
allocate(lll,ttt)
call f3(ttt)
call move_alloc(ttt,lll)
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
