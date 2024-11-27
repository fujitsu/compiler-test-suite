PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 
 
CLASS(deriv),POINTER:: ptr_deriv(:)
TYPE(deriv),POINTER :: ptr1_deriv(:) => NULL()

ALLOCATE(ptr_deriv(10))


      if(ASSOCIATED(ptr1_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

ptr1_deriv=>ptr_deriv

      if(ASSOCIATED(ptr1_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

END PROGRAM
