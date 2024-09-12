MODULE mod1
TYPE ty(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+4)::ch(k1:k2)
  REAL::arr(k2)
  COMPLEX::brr(k2)
END TYPE
END MODULE
PROGRAM main
USE mod1

CALL sub(10)
CONTAINS
  SUBROUTINE sub(dmy)
    INTEGER::dmy
    TYPE(ty(2,4))::ty_obj(10,10)
    DATA ty_obj(5,5), ty_obj(10,10) / ty(2,4)('HI-PDT',50,10), ty(2,4)('HI',50,20) /
    IF(ty_obj(5,5)%ch(dmy-8) /= 'HI-PDT') PRINT*,'101',ty_obj(5,5)%ch(dmy-8)
    IF(any(ty_obj(5,5)%arr /= 50))PRINT*,'102',ty_obj(5,5)%arr
    IF(ty_obj(10,10)%ch(dmy-8) /= 'HI') PRINT*,'103',ty_obj(10,10)%ch(dmy-8)
    IF(any(ty_obj(10,10)%brr /= 20))PRINT*,'104',ty_obj(10,10)%brr
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
