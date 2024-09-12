MODULE mod1
TYPE ty(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2*2)::ch(k1:k2)
  REAL::arr(k2)
  COMPLEX::brr(k2)
END TYPE
END MODULE
PROGRAM main
USE mod1

CALL sub()
CONTAINS
  SUBROUTINE sub()
    INTEGER::i
    TYPE(ty(2,4))::ty_obj(10)
    DATA (ty_obj(i),i=1,10,2) / 5*ty(2,4)('HI-PDT',50,10)/
    DATA (ty_obj(i),i=2,10,2) / 5*ty(2,4)('PDT',50,20)/
    IF(ty_obj(1)%ch(2) /= 'HI-PDT') PRINT*,'101',ty_obj(1)%ch(2)
    IF(any(ty_obj(1)%arr /= 50))PRINT*,'102',ty_obj(1)%arr
    IF(ty_obj(2)%ch(2) /= 'PDT') PRINT*,'103',ty_obj(2)%ch(2)
    IF(any(ty_obj(2)%brr /= 20))PRINT*,'104',ty_obj(2)%brr
    PRINT*,'PASS'
  END SUBROUTINE
END PROGRAM
