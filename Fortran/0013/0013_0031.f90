module mmm
type aa
integer,pointer::p(:)
end type
type tt
 type (aa)     :: aaa
end type
integer,pointer::t(:)
type(tt)::ttt
integer::n=1
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
ttt%aaa%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt)::lll(1)
lll=reshape([ttt],[n])
if (ttt%aaa%p(2)/=3) print *,101
if (lll(1)%aaa%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'OK'
end

