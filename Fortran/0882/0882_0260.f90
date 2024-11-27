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

TYPE ,EXTENDS(deriv)::deriv1
  INTEGER(KIND=8) :: int3
  REAL(KIND=8) ::real3
  CLASS(deriv),ALLOCATABLE::deriv_com
END TYPE

TYPE con
  TYPE(deriv1),ALLOCATABLE::obj1
END TYPE  

TYPE(con)::obj
ALLOCATE(obj%obj1)
ALLOCATE(obj%obj1%deriv_com)

if(ALLOCATED(obj%obj1%deriv_com)) then
  print*,'ALLOCATED'
else
  print*,'DEALLOCATED'
endif

DEALLOCATE(obj%obj1%deriv_com)

if(ALLOCATED(obj%obj1%deriv_com)) then
  print*,'ALLOCATED'
else
  print*,'DEALLOCATED'
endif
DEALLOCATE(obj%obj1)

END

