MODULE mod1
TYPE ty(k1,k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2)::ch(k1:k2)
  REAL::arr(k2)
END TYPE

TYPE ty1
  INTEGER(KIND=8)::ii
  TYPE(ty(2))::cmp_ty(2)
END TYPE

TYPE(ty1),DIMENSION(:),ALLOCATABLE,SAVE::ty1_obj
END MODULE
PROGRAM main
USE mod1
CALL alloc(4)
IF(ty1_obj(3)%cmp_ty(2)%ch(2) /= 'HELLO')   PRINT*,'101',ty1_obj(3)%cmp_ty(2)%ch(2)
IF(LEN(ty1_obj(3)%cmp_ty(2)%ch) /= 6)   PRINT*,'102',LEN(ty1_obj(3)%cmp_ty(2)%ch)
IF(LBOUND(ty1_obj(3)%cmp_ty(2)%arr,1) /= 1)  PRINT*,'103',LBOUND(ty1_obj(3)%cmp_ty(2)%arr,1)
IF(UBOUND(ty1_obj(3)%cmp_ty(2)%arr,1) /= 6)  PRINT*,'104',LBOUND(ty1_obj(3)%cmp_ty(2)%arr,1)
PRINT*,'PASS'
  CONTAINS
    SUBROUTINE alloc(dmy)
      INTEGER::dmy,i=0
      ALLOCATE(ty1_obj(dmy))
      DO i=1,dmy
        ty1_obj(i) = ty1(10+i, ty(2)('HELLO',100))
      END DO
    END SUBROUTINE
END PROGRAM
