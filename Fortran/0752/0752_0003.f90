module mod
interface operator (*)
function sub(a,b)
logical,intent(in)::a,b
end function
end interface operator (*)
private operator (*)
 type x
   integer:: x1
   procedure(sub),nopass,pointer::pa
  end type
  type (x):: v
contains 
subroutine set
v%pa=>sub
end subroutine
end
module mod1
use mod
end
subroutine s1
use mod1,only:v,set
call set
if (v%pa(.true.,.true.)/=-1) print *,201
if (v%pa(.true.,.false.)/=2) print *,202
end
use mod1,only:
call s1
print *,'pass'
end
function sub(a,b)
logical,intent(in)::a,b
sub=2
if (a.and.b) sub=-1
end
