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
  TYPE(deriv),POINTER :: ptr_deriv=> NULL()
END TYPE

TYPE con1
  CLASS(deriv),POINTER :: ptr1_deriv
END TYPE

TYPE(con)::obj
TYPE(con1)::obj1

ALLOCATE(obj1%ptr1_deriv)

      if(ASSOCIATED(obj%ptr_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj%ptr_deriv=>obj1%ptr1_deriv

      if(ASSOCIATED(obj%ptr_deriv)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

END PROGRAM
