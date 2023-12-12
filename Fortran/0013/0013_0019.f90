module mmm
type tt
integer,pointer::p(:)
end type
type w
 type(tt):: tv
end type
integer,pointer::t(:)
contains
function f3() result(ttt)
type(w)::ttt
allocate(t(3))
t=(/1,2,3/)
ttt%tv%p=>t(::2)
end function f3
end
subroutine s1
use mmm
type(w)::v   
v  =f3()
if (v%tv%p(2)/=3) print *,201
end subroutine
call s1
print *,'OK'
end
