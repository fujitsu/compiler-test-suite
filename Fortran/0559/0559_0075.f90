MODULE mod1
TYPE ty0(k3)
  INTEGER,KIND::k3=5
  INTEGER::xx(k3)
END TYPE
TYPE ty
  INTEGER::val
  TYPE(ty0(4))::cmp_ty0
END TYPE
TYPE ty1(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  REAL::arr(k2)
  TYPE(ty)::cmp_ty
END TYPE
END MODULE
PROGRAM main
USE mod1

TYPE(ty1(2,4))::ty1_obj
DATA ty1_obj / ty1(2,4)('HI-PDT',50.0,ty(20, ty0(4)(30))) /
IF(ty1_obj%ch(2) /= 'HI-PDT') PRINT*,'101',ty1_obj%ch(2)
IF(any(ty1_obj%arr /= 50.0))PRINT*,'102',ty1_obj%arr
IF(any(ty1_obj%cmp_ty%cmp_ty0%xx /= 30)) PRINT*,'103',ty1_obj%cmp_ty%cmp_ty0%xx
IF(ubound(ty1_obj%cmp_ty%cmp_ty0%xx,1) /= 4) PRINT*,'104',ubound(ty1_obj%cmp_ty%cmp_ty0%xx,1)
IF(ty1_obj%cmp_ty%cmp_ty0%k3 /= 4)PRINT*,'105',ty1_obj%cmp_ty%cmp_ty0%k3
PRINT*,'PASS'
END PROGRAM
