MODULE mod1
TYPE ty(k3)
  INTEGER,KIND::k3
  INTEGER::val(k3)
END TYPE
TYPE ty1(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  REAL::arr(k2)
  TYPE(ty(4))::cmp_ty
END TYPE
END MODULE
PROGRAM main
USE mod1

TYPE(ty1(2,4))::ty1_obj
DATA ty1_obj / ty1(2,4)('HI-PDT',50,ty(4)(40)) /
IF(ty1_obj%ch(2) /= 'HI-PDT') PRINT*,'101',ty1_obj%ch(2)
IF(any(ty1_obj%arr /= 50))PRINT*,'102',ty1_obj%arr
IF(any(ty1_obj%cmp_ty%val /= 40)) PRINT*,'103',ty1_obj%cmp_ty%val
IF(ty1_obj%k2 /= 4)PRINT*,'104',ty1_obj%k2
PRINT*,'PASS'
END PROGRAM
