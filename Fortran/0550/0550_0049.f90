PROGRAM MAIN

IMPLICIT NONE
 
TYPE base
  REAL(KIND=8) ::real1
  INTEGER(KIND=8) ::int1
END TYPE
 
TYPE ,EXTENDS(base)::deriv
  CLASS(*),POINTER :: ptr_1(:)
  INTEGER(KIND=8) :: int2
  REAL(KIND=8) ::real2
END TYPE 


type(deriv)::obj
CLASS(*),POINTER:: ptr_2(:) => null()

obj%int2=3
allocate(deriv :: obj%ptr_1(10))

if(ASSOCIATED(ptr_2)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

allocate(ptr_2, source =obj%ptr_1)

if(ASSOCIATED(ptr_2)) then
  print*,'ASSOCIATED'
else
  print*,'NOT ASSOCIATED YET'
endif

END PROGRAM
