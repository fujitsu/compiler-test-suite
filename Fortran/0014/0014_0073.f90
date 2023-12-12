module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),allocatable :: w
type(aa),allocatable :: www
contains
subroutine f3
allocate(www)
allocate(t(3))
t=(/1,2,3/)
www%p=>t(::2)
end subroutine
subroutine s1(wwwa)
type(aa),allocatable :: wwwa
allocate( w, source=wwwa)
if (w%p(2)/=3) print *,'err'
end subroutine
end
use mmm
call f3
call s1(www)
print *,'pass'
end


