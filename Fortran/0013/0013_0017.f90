module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
contains
function f3() result(ttt)
type(tt)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end function f3
end
subroutine s1
use mmm
type yy
type(tt)::lll
end type
type zz
type(yy):: yv
end type
type(zz)::zv
zv%yv%lll=f3()
if(zv%yv%lll%p(1)/=1) print *,300
if(zv%yv%lll%p(2)/=3) print *,301
end subroutine
call s1
print *,'OK'
end
