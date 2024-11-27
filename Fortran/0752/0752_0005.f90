module mod
interface operator (*)
function sub(a,b)
logical,intent(in)::a,b
end function
end interface operator (*)
 type x
   integer:: x1
   procedure(sub),nopass,pointer::pa
   contains
     procedure:: y
     generic :: yy=>y
  end type
  type (x):: v
  contains
   subroutine y(yv)
    class(x):: yv
    if (yv%pa(.true.,.true.)/=-1) print *,251
   end subroutine
end
module mod1
use mod
end
subroutine s1
use mod1,only:operator (*),sub,v
if ((.true.*.true.)/=-1) print *,101
if ((.true.*.false.)/=2) print *,102,(.true.*.false.)
v%pa=>sub
if (v%pa(.true.,.true.)/=-1) print *,201
if (v%pa(.true.,.false.)/=2) print *,202
if (sub(.true.,.true.)/=-1) print *,301
if (sub(.true.,.false.)/=2) print *,302
call v%yy()
call v%y()
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
