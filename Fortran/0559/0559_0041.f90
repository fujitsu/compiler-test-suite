PROGRAM main
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=5
  INTEGER::arr(k1)
  CHARACTER(LEN=k2)::ch
END TYPE
TYPE::ty1(k2)
  INTEGER,KIND::k2=2
  TYPE(ty(4)),ALLOCATABLE::ty_cmp(:)
END TYPE

TYPE(ty(4)),TARGET::ty_obj(4)=ty(4,5)(50,'PDT')
TYPE(ty1(4))::ty1_obj
ALLOCATE(ty1_obj%ty_cmp(4))
ty1_obj = ty1(4)(ty_obj)
IF(.NOT. ALLOCATED(ty1_obj%ty_cmp))THEN
  PRINT*,'100'
END IF
IF(ANY(ty1_obj%ty_cmp(2)%arr /= 50)) PRINT*,'101',ty1_obj%ty_cmp(2)%arr
IF(ty1_obj%ty_cmp(2)%ch /= 'PDT')  PRINT*,'102',ty1_obj%ty_cmp(2)%ch
IF(ty1_obj%ty_cmp%k1 /= 4) PRINT*,'103',ty1_obj%ty_cmp%k1
IF(ty1_obj%ty_cmp%k2 /= 5) PRINT*,'104',ty1_obj%ty_cmp%k2
IF(LEN(ty1_obj%ty_cmp(2)%ch) /= 5) PRINT*,'105',LEN(ty1_obj%ty_cmp(2)%ch)
IF(KIND(ty1_obj%ty_cmp(2)%k1) /= 4) PRINT*,'106',KIND(ty1_obj%ty_cmp(2)%k1)
IF(LBOUND(ty1_obj%ty_cmp(2)%arr,1) /= 1) PRINT*,'107',LBOUND(ty1_obj%ty_cmp(2)%arr,1)
IF(UBOUND(ty1_obj%ty_cmp(2)%arr,1) /= 4) PRINT*,'108',LBOUND(ty1_obj%ty_cmp(2)%arr,1)
PRINT*,'PASS'
END PROGRAM
