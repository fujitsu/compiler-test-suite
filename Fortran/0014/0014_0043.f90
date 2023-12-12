module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type vv
type(tt)::ttt
end type
type(vv) :: vvv
end
subroutine s1()
use mmm,only:sss=>vvv
use mmm
type(tt)::lll
call f3()
lll=sss%ttt
if (sss%ttt%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err'
end subroutine
subroutine f3
use mmm
allocate(t(3))
t=(/1,2,3/)
vvv%ttt%p=>t(::2)
end subroutine
use mmm
call s1
print *,'pass'
end
