module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type vv
type(tt)::ttt
end type
end
subroutine s1()
use mmm
type(tt),allocatable::www
type(vv) ::str
call f2
allocate( www, source=str%ttt)
if (str%ttt%p(2)/=3) print *,101
if (www%p(2)/=3) print *,'err'
contains
subroutine f2()
call f3(str)
end subroutine
end subroutine
subroutine f3(str)
use mmm
type(vv) :: str
allocate(t(3))
t=(/1,2,3/)
str%ttt%p=>t(::2)
end subroutine
use mmm
call s1
print *,'pass'
end
