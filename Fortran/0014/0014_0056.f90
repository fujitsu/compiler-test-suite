module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),allocatable :: w
contains
subroutine f3
allocate(w)
allocate(t(3))
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(aa),allocatable :: www
allocate( www, source=(w))
if (www%p(2)/=3) print *,'err'
end subroutine
use mmm
call f3
call s1
print *,'pass'
end


