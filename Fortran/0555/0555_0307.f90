PROGRAM MAIN
 
IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  CLASS(base),POINTER::ptr_base
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE

TYPE nano 
 CLASS(*),POINTER:: ptr_base1 => null()
END TYPE

TYPE(nano):: obj_nano
TYPE(deriv),POINTER :: ptr_deriv

ALLOCATE(ptr_deriv)
 
      if(ASSOCIATED(obj_nano%ptr_base1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

obj_nano%ptr_base1=>ptr_deriv

      if(ASSOCIATED(obj_nano%ptr_base1)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif

 
END PROGRAM
