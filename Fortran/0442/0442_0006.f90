module mmm
implicit type(tt)(s)
type tt
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(tt)::ttt
interface
 function sub()
 import 
 implicit type(tt)(s)
 end function
end interface
integer:: c=0
end
subroutine s2(sx)
use mmm
implicit type(tt)(s)
procedure(sub)::sx 
procedure(sub),pointer::sp 
type(tt)::lll
sp=>sx
lll= sp()
if (lll%p(2)/=3) print *,'err',lll%p(2)
end subroutine
subroutine s3(sx)
use mmm
implicit type(tt)(s)
procedure(sub)::sx 
procedure(sub),pointer::sp 
type(tt)::lll
lll= sx()
if (lll%p(2)/=3) print *,'err',lll%p(2)
end subroutine
subroutine s4(sp)
use mmm
implicit type(tt)(s)
procedure(sub),pointer::sp 
type(tt)::lll
lll= sp()
if (lll%p(2)/=3) print *,'err',lll%p(2)
end subroutine
subroutine f3
use mmm
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
end subroutine
 function sx()
 use mmm
 implicit type(tt)(s)
 sx=ttt
 end function

use mmm
interface
subroutine s4(sp)
import
implicit type(tt)(s)
procedure(sub),pointer::sp 
end subroutine
end interface
procedure(sub)::sx 
procedure(sub),pointer::sp 
call f3()
call s2(sx)
call s3(sx)
sp=>sx
call s4(sp)
print *,'pass'
end
