module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
end
subroutine s1()
use mmm
type(tt),allocatable::www
type(tt)::ttt(1)
call f2
allocate( www, source=ttt(1))
if (ttt(1)%p(2)/=3) print *,101
if (www%p(2)/=3) print *,'err'
contains
subroutine f2()
call f3(ttt)
end subroutine
end subroutine
subroutine f3(ttt)
use mmm
type(tt)::ttt(1)
allocate(t(3))
t=(/1,2,3/)
ttt(1)%p=>t(::2)
end subroutine
use mmm
call s1
print *,'pass'
end
