MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=3
  INTEGER::arr(k1:k2)
  CHARACTER(LEN=k2)::ch
END TYPE
END MODULE
MODULE mod2
USE mod1
TYPE, EXTENDS(ty)::ty1(k3)
  INTEGER,KIND ::k3=4
END TYPE
TYPE(ty1(2,5,4)),POINTER::ty1_obj1
TYPE(ty1(2,5)),ALLOCATABLE::ty1_obj2, ty1_obj3
END MODULE

PROGRAM main
USE mod2
ALLOCATE(ty1(2,5)::ty1_obj1, ty1_obj2,ty1_obj3)
ty1_obj2 = ty1(2,5)(50,'PDT')
IF(ANY(ty1_obj2%arr /= 50)) PRINT*,'101',ty1_obj2%arr
IF(ty1_obj2%ch /= 'PDT')  PRINT*,'102',ty1_obj2%ch
IF(ty1_obj2%k1 /= 2) PRINT*,'103',ty1_obj2%k1
IF(ty1_obj2%k2 /= 5) PRINT*,'104',ty1_obj2%k2
IF(ty1_obj2%k3 /= 4) PRINT*,'105',ty1_obj2%k3
IF(LEN(ty1_obj2%ch) /= 5) PRINT*,'106',LEN(ty1_obj2%ch)
IF(KIND(ty1_obj2%k2) /= 4) PRINT*,'107',KIND(ty1_obj2%k2)
IF(LBOUND(ty1_obj2%arr,1) /= 2) PRINT*,'108',LBOUND(ty1_obj2%arr,1)
IF(UBOUND(ty1_obj2%arr,1) /= 5) PRINT*,'109',LBOUND(ty1_obj2%arr,1)
PRINT*,'PASS'
END PROGRAM
