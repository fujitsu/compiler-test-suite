module mod
interface operator (*)
procedure sub
end interface operator (*)
procedure(sub),pointer::pa
contains
function sub(a,b)
logical,intent(in)::a,b
sub=2
if (a.and.b) sub=-1
end function
end
module mod1
use mod
end
subroutine s1
use mod1,only:operator (*),pa,sub
if ((.true.*.true.)/=-1) print *,101
if ((.true.*.false.)/=2) print *,102,(.true.*.false.)
pa=>sub
if (pa(.true.,.true.)/=-1) print *,201
if (pa(.true.,.false.)/=2) print *,202
if (sub(.true.,.true.)/=-1) print *,301
if (sub(.true.,.false.)/=2) print *,302
end
use mod1,only:
call s1
print *,'pass'
end
