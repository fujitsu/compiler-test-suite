module mod
 INTERFACE aaa
  procedure sub1
  procedure sub2
 end INTERFACE
contains
  SUBROUTINE sub1(tt)
   INTEGER :: tt
   tt=100
  END SUBROUTINE 
  SUBROUTINE sub2(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in) :: pp
  end SUBROUTINE
end
use mod
integer,target :: tt
CALL aaa(tt) 
print *,'pass'
end
