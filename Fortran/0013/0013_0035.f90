module mmm
type aa
integer,pointer::p(:)
end type
type tt
 type (aa) ,allocatable    :: aaa
end type
integer,pointer::t(:)
type(tt)::ttt(1)
type(aa)::zz    
type(aa),pointer:: w
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
zz%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt),target::lll
allocate(lll% aaa)
w=> lll%aaa
call set
if (lll%aaa%p(2)/=3) print *,102
end subroutine
use mmm
call f3
call s1
print *,'OK'
end
subroutine set
use mmm
w=  zz
end subroutine


