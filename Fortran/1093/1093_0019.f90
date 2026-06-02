 INTERFACE aaa
  SUBROUTINE sub1(tt)
   INTEGER :: tt
  END SUBROUTINE 
  SUBROUTINE sub2(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in) :: pp
  end SUBROUTINE
 END INTERFACE

integer,target :: tt
CALL aaa(tt) 
print *,'pass'
end


  SUBROUTINE sub1(tt)
   INTEGER :: tt
  END SUBROUTINE 
  SUBROUTINE sub2(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in):: pp
  end SUBROUTINE
