PROGRAM main

TYPE ty
END TYPE

TYPE,EXTENDS(ty)::ty1
  CLASS(ty),POINTER     ::jj=>NULL()
  CLASS(ty),ALLOCATABLE ::ll
END TYPE
  
TYPE,EXTENDS(ty1)::ty2
  CLASS(ty1),POINTER     ::mm=>NULL()
  CLASS(ty1),ALLOCATABLE ::nn
  TYPE(ty1)::cmp
END TYPE




TYPE(ty)  :: ty_obj
TYPE(ty1),pointer :: ty1_obj
TYPE(ty2),allocatable :: ty2_obj
allocate(ty1_obj)
allocate(ty2_obj)
IF(SAME_type_As(ty2_obj%mm,ty1_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL1"
ELSE 
  PRINT *,"PASS1"
ENDIF


IF(SAME_type_As(ty2_obj%nn,ty1_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL2"
ELSE
  PRINT *,"PASS2"
ENDIF


IF(SAME_type_As(ty2_obj%cmp%jj,ty_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL3"
ELSE
  PRINT *,"PASS3"
ENDIF


IF(SAME_type_As(ty2_obj%cmp%ll,ty_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL4"
ELSE 
  PRINT *,"PASS4"
ENDIF
End Program
