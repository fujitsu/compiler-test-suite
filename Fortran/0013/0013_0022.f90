module mmm
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
contains
subroutine f3() 
allocate(t(3))
t=(/1,2,3/)
end subroutine
end
subroutine s1
use mmm
type(tt)::lll
lll=tt(t(::2))
if (lll%p(2)/=3) print *,201
end subroutine
use mmm
call f3
call s1
print *,'OK'
end
