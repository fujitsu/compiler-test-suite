module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),pointer:: w
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type xx
type(aa)::lll(1)
end type
type(xx),target ::str
w=> str%lll(1)
call f3
if (str%lll(1)%p(2)/=3) print *,'err'
end subroutine
use mmm
call s1
print *,'pass'
end


