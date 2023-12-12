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
type yy
type(aa),pointer::lll
end type
type(yy)::yt
type(aa),pointer:: ww
allocate(yt%lll)
w=> yt%lll
ww=>w
call f3
if (ww%p(2)/=3) print *,102
end subroutine
use mmm
call s1
print *,'OK'
end


