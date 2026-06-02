module mod1
interface
 subroutine s0c(d) bind(c)
  integer::d(..)
 end subroutine
 subroutine s0cc(d) bind(c)
  integer::d(..)
 end subroutine
 subroutine s0cf(d)
  integer::d(..)
 end subroutine
end interface
end

use mod1

type ty
character(len=4)::a
integer::x
end type
call sub3((/ty('aaaa',2),ty('bbbb',3),ty('cccc',4),ty('dddd',5),ty('eeee',6)/),1)
        print*,"PASS"
contains
SUBROUTINE sub3(aa,r)        
   IMPLICIT NONE  
    Type(*)::aa(..)
    integer::r 
    if(rank(aa).ne.r)print*,"101",rank(aa)
    if(any(lbound(aa).ne.1))print*,"102"
    if(any(ubound(aa).ne.5))print*,"103"
   END SUBROUTINE sub3
end 

subroutine s0c(d) bind(c)
  use mod1
  integer::d(..)
  if(any(lbound(d).ne.0))print*,"101"
   call s0cc(d)
   call s0cf(d)
end subroutine

subroutine s0cc(d) bind(c)
  integer::d(..)
  if(any(lbound(d).ne.0))print*,"110"
 end subroutine
 
subroutine s0cf(d)
  integer::d(..)
  if(any(lbound(d).ne.0))print*,"111"
 end subroutine      

