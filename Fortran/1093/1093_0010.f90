 INTERFACE aaa
  SUBROUTINE sub1(tt)
   INTEGER :: tt
  END SUBROUTINE 
  SUBROUTINE sub2(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in) :: pp
  end SUBROUTINE
 END INTERFACE

integer,target :: tt!(10,10)
CALL aaa(tt) 
if (1.eq.2)CALL aaa(ifun()) 
print *,'pass'
contains
function ifun() result(iii)
integer,target :: iii!(10)
end
end


  SUBROUTINE sub1(tt)
   INTEGER :: tt
  END SUBROUTINE 
  SUBROUTINE sub2(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in):: pp
  end SUBROUTINE
