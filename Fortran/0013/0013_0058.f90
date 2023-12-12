module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),pointer:: w
type yy
type(aa),pointer::lll
end type
contains
subroutine f3
type(yy)::yt
allocate(t(3))
allocate(yt%lll)
w=> yt%lll
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(aa),pointer:: ww
ww=>w
if (ww%p(2)/=3) print *,102
end subroutine
subroutine s2()
use mmm
type(aa),pointer:: ww
ww=>w
if (is_contiguous(ww%p(:))) print *,102
end subroutine
subroutine s3()
use mmm
type(aa),pointer:: ww
ww=>w
if (is_contiguous(ww%p)) print *,103
end subroutine
subroutine s4()
use mmm
type(aa),pointer:: ww
ww=>w
call ss(ww%p(:)) 
end subroutine
subroutine s5()
use mmm
type(aa),pointer:: ww
ww=>w
call ss(ww%p(:)) 
end subroutine
subroutine s6()
use mmm
type(aa),pointer:: ww
ww=>w
if (ntt(ww%p(:))/=1) print *,122
end subroutine
subroutine s7()
use mmm
type(aa),pointer:: ww
ww=>w
if (ntt(ww%p)/=1) print *,132
end subroutine
use mmm
call f3
call s1
call s2
call s3
call s4
call s5
call s6
call s7
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



