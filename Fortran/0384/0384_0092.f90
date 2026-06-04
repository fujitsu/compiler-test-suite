print *,"pass"
end
module mod
integer ,protected :: int1
type ty1
 integer :: iii
end type
type(ty1) ,protected :: int2
real,pointer ,protected :: int3
logical,protected,external :: int4
pointer :: int4
logical,protected,external,pointer :: int5
external :: int6
protected :: int6
protected :: int7
external :: int7
integer :: int8
protected :: int8
external :: int8
external :: int9
integer :: int9
protected :: int9
protected :: inta
integer :: inta
external :: inta
protected :: intb
external :: intb
integer :: intb
external :: intc
protected :: intc
integer :: intc
integer :: intd
external :: intd
protected :: intd
pointer int6,int7,int8,int9,inta,intb,intc,intd
contains
subroutine sss()
call isub()
int1=int1+1
contains
subroutine isub()
int1=10
end subroutine
end subroutine
end

subroutine subbbb()
use mod
ii=1
ii=int1+ii
if (1.eq.2) then
call subl(int4)
call sub(int6)
call sub(int7)
call sub(int8)
call sub(int9)
call sub(inta)
call sub(intb)
call sub(intc)
call sub(intd)
end if
end
subroutine sub(iii)
integer :: iii
external iii
ii=loc(iii)
ii=ii
end subroutine
subroutine subl(iii)
logical :: iii
external iii
ii=loc(iii)
ii=ii
end subroutine

subroutine subb()
use mod,sss=>int4
end
