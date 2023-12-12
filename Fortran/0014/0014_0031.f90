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
goto 10
10 call f3(ttt)
goto 20
20 if (ttt%p(2)/=3) print *,101
contains
subroutine f3(ttt)
type(tt)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end subroutine
end subroutine
use mmm
call s1
print *,'pass'
end
