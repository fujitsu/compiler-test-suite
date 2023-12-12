module mmm
type aa
integer,pointer::p(:)
end type
type aaa
 type(aa):: z
end type
integer,pointer::t(:)
type(aa),pointer :: w
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(aaa),target :: www
w=> www%z
call f3
if (www%z%p(2)/=3) print *,102
end subroutine
use mmm
call s1
print *,'OK'
end


