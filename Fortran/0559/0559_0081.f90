MODULE mod1
TYPE ty(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2)::ch(k1:k2)
  REAL(KIND=4)::arr(k2-k1)
END TYPE
type(ty(2,8))::obj = ty(2,8)('HI-PDT', 50)
END MODULE
PROGRAM main
USE mod1

IF(ANY(obj%ch /= 'HI-PDT')) PRINT*,'101',obj%ch
IF(ANY(obj%arr /= 50)) PRINT*,'102',obj%arr
IF(UBOUND(obj%arr,1) /= 6) PRINT*,'103',UBOUND(obj%arr,1)
IF(LEN(obj%ch) /= 8) PRINT*,'104',LEN(obj%ch)
IF(LBOUND(obj%ch,1) /= 2) PRINT*,'105',LBOUND(obj%ch,1)
IF(UBOUND(obj%ch,1) /= 8) PRINT*,'106',UBOUND(obj%ch,1)
PRINT*,'pass'
END PROGRAM
