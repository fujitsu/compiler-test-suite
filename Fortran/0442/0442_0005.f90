module mmm
implicit type(tt)(s)
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::ttt
interface
 subroutine sub
 end subroutine
end interface
integer:: c=0
end
subroutine s1(sx,sttx)
use mmm
implicit type(tt)(s)
procedure(sub)::sx 
procedure(sub),pointer::sp 
type(tt)::lll
sp=>sx
call sp
call sx
lll=sttx
if (sttx%p(2)/=3) print *,101
if (lll%p(2)/=3) print *,'err',lll%p(2)
end subroutine
subroutine f3
use mmm
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end subroutine
use mmm
procedure(sub)::sx 
call f3()
call s1(sx,ttt)
if (c/=2) print *,201
print *,'pass'
end
subroutine sx
use mmm
c=c+1
end
