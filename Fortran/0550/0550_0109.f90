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
 
TYPE con
  TYPE(deriv),POINTER :: ptr1_deriv(:) => null()
END TYPE

TYPE(con)::obj
CLASS(deriv),POINTER:: ptr_deriv(:)

allocate(ptr_deriv(5))

      if(ASSOCIATED(obj%ptr1_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj%ptr1_deriv=>ptr_deriv

      if(ASSOCIATED(obj%ptr1_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

END PROGRAM
