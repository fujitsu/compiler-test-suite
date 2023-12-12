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
use mmm
call f3
call s1
print *,'OK'
end


