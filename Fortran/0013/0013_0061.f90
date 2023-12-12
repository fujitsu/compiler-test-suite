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
call move_alloc( w , www)
if (www%p(2)/=3) print *,102
end subroutine
subroutine s2()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
if (is_contiguous(www%p)) print *,102
end subroutine
subroutine s3()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
if (is_contiguous(www%p(:))) print *,102
end subroutine
subroutine s4()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
call ss(www%p(:)) 
end subroutine
subroutine s5()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
call ss(www%p) 
end subroutine
subroutine s6()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
if (ntt(www%p(:))/=1) print *,102
end subroutine
subroutine s7()
use mmm
type(aa),allocatable :: www
call move_alloc( w , www)
if (ntt(www%p)/=1) print *,102
end subroutine
use mmm
call f3
call s1
call f3
call s2
call f3
call s3
call f3
call s4
call f3
call s5
call f3
call s6
call f3
call s7
print *,'OK'
end
function ntt(x)
integer::x(2)
if (x(2)/=3) print *,5003
ntt=1
end
subroutine ss(x)
integer::x(2)
if (x(2)/=3) print *,1001
end



