PROGRAM main
TYPE ty(k1)
  INTEGER ,KIND::k1
  INTEGER::arr(2:k1)
  CHARACTER(LEN=k1)::ch
END TYPE
TYPE::ty1(k2)
  INTEGER,KIND::k2=2
  TYPE(ty(k2))::ty_cmp(k2)
END TYPE

TYPE(ty(4)),TARGET::ty_obj
CLASS(ty1(4)),ALLOCATABLE::ty1_obj
ty_obj=ty(4)([50,50,50],'PDT')
ALLOCATE(ty1_obj, SOURCE = ty1(4)(ty_obj))
IF(ANY(ty1_obj%ty_cmp(2)%arr /= 50)) PRINT*,'101',ty1_obj%ty_cmp(2)%arr
IF(ty1_obj%ty_cmp(2)%ch /= 'PDT')  PRINT*,'102',ty1_obj%ty_cmp(2)%ch
IF(ty1_obj%ty_cmp%k1 /= 4) PRINT*,'103',ty1_obj%ty_cmp%k1

IF(LEN(ty1_obj%ty_cmp(2)%ch) /= 4) PRINT*,'105',LEN(ty1_obj%ty_cmp(2)%ch)
IF(KIND(ty1_obj%ty_cmp(2)%k1) /= 4) PRINT*,'106',KIND(ty1_obj%ty_cmp(2)%k1)
IF(LBOUND(ty1_obj%ty_cmp(2)%arr,1) /= 2) PRINT*,'107',LBOUND(ty1_obj%ty_cmp(2)%arr,1)
IF(UBOUND(ty1_obj%ty_cmp(2)%arr,1) /= 4) PRINT*,'108',LBOUND(ty1_obj%ty_cmp(2)%arr,1)
PRINT*,'PASS'
END PROGRAM
