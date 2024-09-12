MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  CHARACTER(LEN=k1)::ch1
  CHARACTER(LEN=k2)::ch2
END TYPE
END MODULE

PROGRAM main
USE mod1
TYPE(ty(6,5))::ty_obj(2)
CHARACTER(LEN=5)::xx = 'HELLO'
ty_obj = [ty(6,5)(xx,'PDT1'),ty(6,5)('HI','PDT2')]
IF(ty_obj(1)%ch1 /= 'HELLO')  PRINT*,'101',ty_obj(1)%ch1
IF(ty_obj(1)%ch2 /= 'PDT1')  PRINT*,'102',ty_obj(1)%ch2
IF(ty_obj(2)%ch1 /= 'HI')  PRINT*,'103',ty_obj(2)%ch1
IF(ty_obj(2)%ch2 /= 'PDT2')  PRINT*,'104',ty_obj(2)%ch2
IF(ty_obj%k1 /= 6) PRINT*,'105',ty_obj%k1
IF(ty_obj%k2 /= 5) PRINT*,'106',ty_obj%k2
IF(LEN(ty_obj(1)%ch1) /= 6) PRINT*,'107',LEN(ty_obj(1)%ch1)
IF(LEN(ty_obj(2)%ch2) /= 5) PRINT*,'108',LEN(ty_obj(2)%ch2)
PRINT*,'PASS'
END PROGRAM
