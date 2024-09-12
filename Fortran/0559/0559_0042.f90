PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1)
  CHARACTER(LEN=k2)::ch
END TYPE
TYPE::ty1(k2)
  INTEGER,KIND::k2=2
  TYPE(ty(4))::ty_cmp
END TYPE

TYPE(ty1(4))::ty1_obj
INTEGER::ii(4) = 50
ty1_obj%ty_cmp = ty(4)(ii,'PDT')
IF(ANY(ty1_obj%ty_cmp%arr /= 50)) PRINT*,'101',ty1_obj%ty_cmp%arr
IF(ty1_obj%ty_cmp%ch /= 'PDT')  PRINT*,'102',ty1_obj%ty_cmp%ch
IF(ty1_obj%ty_cmp%k1 /= 4) PRINT*,'103',ty1_obj%ty_cmp%k1
IF(ty1_obj%ty_cmp%k2 /= 5) PRINT*,'104',ty1_obj%ty_cmp%k2
IF(LEN(ty1_obj%ty_cmp%ch) /= 5) PRINT*,'105',LEN(ty1_obj%ty_cmp%ch)
IF(KIND(ty1_obj%ty_cmp%k1) /= 4) PRINT*,'106',KIND(ty1_obj%ty_cmp%k1)
IF(LBOUND(ty1_obj%ty_cmp%arr,1) /= 1) PRINT*,'107',LBOUND(ty1_obj%ty_cmp%arr,1)
IF(UBOUND(ty1_obj%ty_cmp%arr,1) /= 4) PRINT*,'108',LBOUND(ty1_obj%ty_cmp%arr,1)
PRINT*,'PASS'
END PROGRAM
