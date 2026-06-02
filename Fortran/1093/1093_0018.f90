 INTERFACE aaa
  SUBROUTINE dbcsr_distribution_new_obj(tt)
   INTEGER :: tt
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in) :: pp
  end SUBROUTINE
 END INTERFACE

integer,target :: tt
CALL aaa(tt) 
print *,'pass'
end


  SUBROUTINE dbcsr_distribution_new_obj(tt)
   INTEGER :: tt
  END SUBROUTINE dbcsr_distribution_new_obj
  SUBROUTINE dbcsr_distribution_new_low(pp)
   INTEGER, DIMENSION(:), POINTER, intent(in):: pp
  end SUBROUTINE
