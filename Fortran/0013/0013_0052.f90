module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa):: w
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type aaa
type(aa) :: www
end type
type(aaa):: wwww,rrrr
type(aa):: qqq
integer,pointer::pp(:)
pp   => w%p
qqq= aa(pp)
rrrr = aaa(qqq    )
wwww = rrrr
if (wwww%www%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'OK'
end


