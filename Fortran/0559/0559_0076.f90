MODULE mod1
TYPE ty(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2)::ch(k1:k2)
  REAL::arr(k2)
END TYPE
END MODULE
PROGRAM main
USE mod1
TYPE(ty(2,8))::ty_obj
PARAMETER(ty_obj = ty(2,8)('HI-PDT', 50))

IF(ANY(ty_obj%ch /= 'HI-PDT')) PRINT*,'101',ty_obj%ch
IF(LEN(ty_obj%ch) /= 8) PRINT*,'102',LEN(ty_obj%ch)
IF(LBOUND(ty_obj%ch,1) /= 2) PRINT*,'103',LBOUND(ty_obj%ch,1)
IF(UBOUND(ty_obj%ch,1) /= 8) PRINT*,'104',UBOUND(ty_obj%ch,1)
IF(ANY(ty_obj%arr /= 50)) PRINT*,'105',ty_obj%arr
IF(UBOUND(ty_obj%arr,1) /= 8) PRINT*,'106',UBOUND(ty_obj%arr,1)
PRINT*,'pass'
END PROGRAM
