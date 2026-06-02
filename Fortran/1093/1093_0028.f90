module mod
 INTERFACE aaa
  procedure sub1
  procedure sub2
 end INTERFACE
contains
  SUBROUTINE sub1(tt,ii)
   INTEGER :: tt
   tt=100
   ii=10
  END SUBROUTINE 
  SUBROUTINE sub2(pp,rr)
   INTEGER, DIMENSION(:), POINTER, intent(in) :: pp
   print *,'err'
  end SUBROUTINE
end
use mod
integer,target :: tt
CALL aaa(tt,ii) 
if (ii.ne.10) print *,'err'
print *,'pass'
end
