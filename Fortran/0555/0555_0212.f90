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
 CLASS(base),POINTER:: ptr_cmp
END TYPE

TYPE(tata) :: obj_tata

TYPE(deriv),TARGET :: tar_deriv
TYPE(base)::obj_base
tar_deriv%real1=60
tar_deriv%int1=33
tar_deriv%int2=72
tar_deriv%real2=89
 
obj_tata % ptr_cmp=>tar_deriv
obj_base=obj_tata%ptr_cmp
 
print*,obj_base%real1
 
END PROGRAM
