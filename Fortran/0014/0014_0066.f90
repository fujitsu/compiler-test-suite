
module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type vv
 type(tt),allocatable:: vvv
end type
end
subroutine s1()
use mmm
type(vv)::lll
type(vv)::ttt
allocate(lll%vvv,ttt%vvv)
call f2
call move_alloc(ttt%vvv,lll%vvv)
if (lll%vvv%p(2)/=3) print *,'err'
contains
subroutine f2()
call f3(ttt)
end subroutine
end subroutine
subroutine f3(ttt)
use mmm
type(vv)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%vvv%p=>t(::2)
end subroutine
use mmm
call s1
print *,'pass'
end
