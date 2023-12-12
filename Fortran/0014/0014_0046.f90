module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::ttt
type vv
type(tt)::ttt
end type
type(vv) ::str
end
subroutine s1(str_a )
use mmm
type(vv)::str_a
type(tt)::lll
lll=str_a%ttt
if (str_a%ttt%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err'
end subroutine
subroutine f3
use mmm
allocate(t(3))
t=(/1,2,3/)
str%ttt%p=>t(::2)
end subroutine
use mmm
call f3()
call s1(str)
print *,'pass'
end
