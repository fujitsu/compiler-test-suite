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
CLASS(*),POINTER:: ptr_2(:)

obj%int2=3
allocate(deriv :: obj%ptr_1(10))

allocate(ptr_2, mold = obj%ptr_1)

if(ASSOCIATED(ptr_2)) then
  if(same_type_as(ptr_2,obj%ptr_1) .neqv. .true.) print*,102
  if(size(ptr_2) == 10) print*,'pass'
else
  print*,101
endif

END PROGRAM
