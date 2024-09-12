PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2+k1)::ch
END TYPE

TYPE(ty(2, 5))::ty_obj(4)
ty_obj(2) = ty(2,5)(50,'PDT')
ty_obj(4) = ty(2,5)(55,'Hi-PDT')
IF(ANY(ty_obj(2)%arr /= 50)) PRINT*,'101',ty_obj(2)%arr
IF(ANY(ty_obj(4)%arr /= 55)) PRINT*,'102',ty_obj(4)%arr
IF(ty_obj%k1 /= 2) PRINT*,'103',ty_obj%k1
IF(ty_obj%k2 /= 5) PRINT*,'104',ty_obj%k2
IF(LEN(ty_obj(2)%ch) /= 7) PRINT*,'105',LEN(ty_obj(2)%ch)
IF(LEN(ty_obj(4)%ch) /= 7) PRINT*,'106',LEN(ty_obj(4)%ch)
IF(LBOUND(ty_obj(2)%arr,1) /= 2) PRINT*,'107',LBOUND(ty_obj(2)%arr,1)
IF(UBOUND(ty_obj(4)%arr,1) /= 5) PRINT*,'108',LBOUND(ty_obj(4)%arr,1)
PRINT*,'PASS'
END PROGRAM
