MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2)::ch(k1:k2)
  REAL::arr(k2)
  COMPLEX::brr(k2)
END TYPE
END MODULE
PROGRAM main
USE mod1

CALL sub(2)
CONTAINS
  SUBROUTINE sub(dmy)
    INTEGER::dmy
    TYPE(ty(2))::ty_obj1
    DATA ty_obj1 / ty(2)('HI-PDT',50,60) /
    IF(ty_obj1%ch(dmy) /= 'HI-PDT') PRINT*,'101',ty_obj1%ch(dmy)
    IF(any(ty_obj1%arr /= 50))PRINT*,'102',ty_obj1%arr
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
