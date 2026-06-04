module m1
interface
 function m()
 end function
 subroutine ss(p)
  import m
  procedure(m),pointer::p
 end subroutine
end interface
end
subroutine s1(d)
use m1
procedure(),pointer::d
call ss(d)
end
subroutine s2(d)
use m1
procedure(integer),pointer::d
call ss(d)
end
subroutine s3(d)
use m1
external       ::d
integer,pointer::d
call ss(d)
end
subroutine s4(d)
use m1
integer,pointer,external::d
call ss(d)
k=d()
if (k/=1)print *,101,k
end
subroutine s5(d)
use m1
integer,pointer::d
external       ::d
k=d()
if (k/=1)print *,102,k
call ss(d)
end
subroutine s6(n)
use m1
procedure(),pointer::n
call ss(n)
k=n()
if (k/=1)print *,103,k
end
subroutine s7(n)
use m1
procedure(),pointer::n
k=n()
if (k/=1)print *,104,k
call ss(n)
end
subroutine s8()
use m1
procedure(integer)::mm
pointer::mm
mm=>m
call ss(mm)
end
subroutine s9()
use m1
pointer::mm
external       ::mm
integer::mm
mm=>m
call ss(mm)
end
subroutine sa()
use m1
procedure(),pointer::mm
mm=>m
call ss(mm)
end
subroutine sb()
use m1
external       ::mm
pointer::mm
mm=>m
call ss(mm)
end
use m1
interface
subroutine s1(d)
procedure(),pointer::d
end subroutine 
subroutine s2(d)
procedure(integer),pointer::d
end subroutine
subroutine s3(d)
external       ::d
integer,pointer::d
end subroutine
subroutine s4(d)
integer,pointer,external::d
end subroutine
subroutine s5(d)
use m1
integer,pointer::d
external       ::d
end subroutine
subroutine s6(n)
procedure(),pointer::n
end subroutine
subroutine s7(n)
procedure(),pointer::n
end subroutine
end interface

procedure(m),pointer:: mm
mm=>m
call s1(mm)
call s2(mm)
call s3(mm)
call s4(mm)
call s5(mm)
call s6(mm)
call s7(mm)
call s8()
call s9()
call sa()
call sb()
print *,'pass'
end
subroutine ss(kk)
use m1
procedure(m),pointer:: kk
if (kk()/=1)print *,201,kk()
end
function m()
m=1
end
