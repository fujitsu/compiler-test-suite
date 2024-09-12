MODULE mod1
TYPE ty(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+4)::ch(k1:k2)
  REAL(KIND=6-2)::arr(k2)
END TYPE
END MODULE
PROGRAM main
USE mod1
TYPE(ty(2,4))::ty_obj
DATA ty_obj / ty(2,4)('HI-PDT', 50) /
IF(ty_obj%ch(2) /= 'HI-PDT') PRINT*,'101',ty_obj%ch(2)
IF(any(ty_obj%arr /= 50))PRINT*,'102',ty_obj%arr
PRINT*,'PASS'
END PROGRAM
