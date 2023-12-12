module mmm
type aa
integer,pointer::p(:)
end type
type tt
 type (aa) ,pointer     :: aaa
end type
integer,pointer::t(:)
type(tt)::ttt(1)
type(aa),target::zz    
contains
subroutine f3
allocate(t(3))
t=(/1,2,3/)
zz%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(tt)::lll
lll%aaa=> zz
if (lll%aaa%p(2)/=3) print *,102
end subroutine
subroutine s2()
use mmm
type(tt)::lll
lll%aaa=> zz
if (is_contiguous(lll%aaa%p)) print *,202
end subroutine
subroutine s3()
use mmm
type(tt)::lll
lll%aaa=> zz
call ss(lll%aaa%p)
end subroutine
subroutine s4()
use mmm
type(tt)::lll
lll%aaa=> zz
if (ntt(lll%aaa%p)/=1) print *,301
end subroutine
subroutine s5()
use mmm
type(tt)::lll
lll%aaa=> zz
if (is_contiguous(lll%aaa%p(:))) print *,212
end subroutine
use mmm
call f3
call s1
call s2
call s3
call s4
call s5
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


