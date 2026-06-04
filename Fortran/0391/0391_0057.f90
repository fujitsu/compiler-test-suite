module m1
integer(8)::save=0
interface 
  subroutine sub
  end subroutine
end interface
contains
subroutine s1()
procedure (sub),pointer::p
type x
integer::x1
procedure (sub),nopass,pointer::pp
end type
type (x)::v
 p=>sub
  call z(p,1)
 v%pp=>sub
  call z(v%pp,1)
 p=>null()
  call z(p,2)
 p=>null()
  call z(  n=3)
end subroutine
subroutine z(sp,n)
procedure(sub),optional::sp
if (present(sp)) then 
call sp
if (n/=1) print *,101
else
if (n==1) print *,102
endif
end subroutine
end
  subroutine sub
use m1
save=save+1
  end subroutine

use m1
call s1()
if (save/=2) print *,201
print *,'pass'
end
