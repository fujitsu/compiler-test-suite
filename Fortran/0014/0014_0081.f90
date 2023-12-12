module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),allocatable :: w(:)
contains
subroutine f3
allocate(w(1))
allocate(t(3))
t=(/1,2,3/)
w(1)%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm,only : wa=>w
use mmm,only : aa
type(aa),allocatable :: www
allocate( www, source=wa(1))
if (www%p(2)/=3) print *,'err'
end subroutine
use mmm
call f3
call s1
print *,'pass'
end


