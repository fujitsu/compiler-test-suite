module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type vv
 type(tt)::ttt
end type
type(vv) :: vvv
 
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
vvv%ttt%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt)::lll
lll=vvv%ttt
if (vvv%ttt%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'OK'
end
