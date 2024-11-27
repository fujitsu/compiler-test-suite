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

TYPE tata 
 CLASS(*),POINTER:: ptr_cmp=>NULL()
END TYPE

TYPE(tata) :: obj_tata
TYPE(deriv),TARGET :: tar_deriv

tar_deriv%real1=60
tar_deriv%int1=33
tar_deriv%int2=72
tar_deriv%real2=89
 
      if(ASSOCIATED(obj_tata%ptr_cmp)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif 

obj_tata % ptr_cmp=>tar_deriv

      if(ASSOCIATED(obj_tata%ptr_cmp)) then
        print*,'ASSOCIATED'
      else
        print*,'NOT ASSOCIATED'
      endif
 
END PROGRAM
