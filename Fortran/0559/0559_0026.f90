PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,kind::k1,k2
  CHARACTER(LEN=k2)::ch
  INTEGER::arr(k1:k2)
END TYPE

TYPE(ty(2, 5)),ALLOCATABLE::ty_obj;
ALLOCATE(ty_obj, SOURCE = ty(2,5)('PDT',50))
IF(ANY(ty_obj%arr /= 50)) PRINT*,'101',ty_obj%arr
IF(ty_obj%ch /= 'PDT')  PRINT*,'102',ty_obj%ch
IF(ty_obj%k1 /= 2) PRINT*,'103',ty_obj%k1
IF(ty_obj%k2 /= 5) PRINT*,'104',ty_obj%k2
IF(LEN(ty_obj%ch) /= 5) PRINT*,'105',LEN(ty_obj%ch)
IF(KIND(ty_obj%k2) /= 4) PRINT*,'106',KIND(ty_obj%k2)
IF(LBOUND(ty_obj%arr,1) /= 2) PRINT*,'107',LBOUND(ty_obj%arr,1)
IF(UBOUND(ty_obj%arr,1) /= 5) PRINT*,'108',LBOUND(ty_obj%arr,1)
PRINT*,'PASS'
END PROGRAM
