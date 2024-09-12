PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE

TYPE(ty(2, 5))::ty_obj(4) = ty(2,5)(50,'PDT')
IF(ANY(ty_obj(3)%arr /= 50)) PRINT*,'101',ty_obj(3)%arr
IF(ty_obj(3)%ch /= 'PDT')  PRINT*,'102',ty_obj(3)%ch
IF(ty_obj(3)%k1 /= 2) PRINT*,'103',ty_obj(3)%k1
IF(ty_obj(3)%k2 /= 5) PRINT*,'104',ty_obj(3)%k2
IF(LEN(ty_obj(3)%ch) /= 5) PRINT*,'105',LEN(ty_obj(3)%ch)
IF(KIND(ty_obj(3)%k2) /= 4) PRINT*,'106',KIND(ty_obj(3)%k2)
IF(LBOUND(ty_obj(3)%arr,1) /= 2) PRINT*,'107',LBOUND(ty_obj(3)%arr,1)
IF(UBOUND(ty_obj(3)%arr,1) /= 5) PRINT*,'108',LBOUND(ty_obj(3)%arr,1)
PRINT*,'PASS'
END PROGRAM
