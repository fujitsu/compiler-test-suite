module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type vv
type(aa),allocatable :: w
end type
type(vv) :: str
contains
subroutine f3
allocate(str%w)
allocate(t(3))
t=(/1,2,3/)
str%w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm,only : sss=>str
use mmm,only : aa
type(aa),allocatable :: www
call move_alloc( sss%w , www)
if (www%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'pass'
end


