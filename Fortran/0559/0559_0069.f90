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

TYPE(ty(2,4))::ty_obj1(5)
TYPE(ty(1,3))::ty_obj2
DATA ty_obj1, ty_obj2 /4*ty(2,4)('HI-PDT',50,60) ,1*ty(2,4)('PDT',50,60), ty(1,3)('PDT', 50,60)/
IF(ty_obj1(2)%ch(2) /= 'HI-PDT') PRINT*,'101',ty_obj1(2)%ch(2)
IF(any(ty_obj1(2)%arr /= 50))PRINT*,'102',ty_obj1(2)%arr
IF(ty_obj2%ch(2) /= 'PDT') PRINT*,'103',ty_obj2%ch(2)
IF(any(ty_obj2%brr /= 60))PRINT*,'104',ty_obj2%brr
PRINT*,'PASS'
END PROGRAM
