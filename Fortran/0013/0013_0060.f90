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
subroutine s2()
use mmm
type(aaa),target :: www
w=> www%z
call f3
if (is_contiguous(www%z%p(:))) print *,102
end subroutine
subroutine s3()
use mmm
type(aaa),target :: www
w=> www%z
call f3
if (is_contiguous(www%z%p)) print *,102
end subroutine
subroutine s4()
use mmm
type(aaa),target :: www
w=> www%z
call f3
call ss (www%z%p(:)) 
end subroutine
subroutine s5()
use mmm
type(aaa),target :: www
w=> www%z
call f3
call ss (www%z%p) 
end subroutine
subroutine s6()
use mmm
type(aaa),target :: www
w=> www%z
call f3
if (ntt(www%z%p(:))/=1) print *,102
end subroutine
subroutine s7()
use mmm
type(aaa),target :: www
w=> www%z
call f3
if (ntt(www%z%p)/=1) print *,142
end subroutine
use mmm
call s1
call s2
call s3
call s4
call s5
call s6
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



