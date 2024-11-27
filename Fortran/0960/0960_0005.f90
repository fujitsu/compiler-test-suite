PROGRAM main

TYPE ty
END TYPE

TYPE,EXTENDS(ty)::ty1
  CLASS(ty),POINTER     ::jj=>NULL()
  CLASS(ty),ALLOCATABLE ::ll
END TYPE

TYPE(ty)  :: ty_obj
TYPE(ty1) :: ty1_obj
IF(SAME_type_As(ty1_obj%jj,ty_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL1"
ELSE 
  PRINT *,"PASS1"
ENDIF
IF(SAME_type_As(ty1_obj%ll,ty_obj) .NEQV. .TRUE.) THEN
  PRINT *,"FAIL2"
ELSE 
  PRINT *,"PASS2"
ENDIF
End Program
