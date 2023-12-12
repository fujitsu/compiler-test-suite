module mmm
type aa
integer,pointer::p(:)
end type
type tt
 type (aa) ,allocatable :: aaa
end type
integer,pointer::t(:)
type(tt)::ttt(1)
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
allocate(ttt(1)%aaa)
ttt(1)%aaa%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt)::lll
lll=ttt(1)
if (lll%aaa%p(2)/=3) print *,101
end
subroutine s2()
use mmm
type(tt)::lll
lll=ttt(1)
if (is_contiguous(lll%aaa%p)) print *,102
end
subroutine s3()
use mmm
type(tt)::lll
lll=ttt(1)
call ss(lll%aaa%p)
end
subroutine s4()
use mmm
type(tt)::lll
lll=ttt(1)
if ( ntt(lll%aaa%p)/=1) print *,5001
end subroutine
subroutine s5()
use mmm
type(tt)::lll
lll=ttt(1)
if (is_contiguous(lll%aaa%p(:))) print *,602
end
use mmm
call f3
call s1
call s2
call s3
call s4
call s5
print *,'OK'
end
function ntt(x)
integer::x(2)
if (x(2)/=3) print *,5003
ntt=1
end
subroutine ss(x)
integer::x(2)
if (x(2)/=3) print *,1001
end

