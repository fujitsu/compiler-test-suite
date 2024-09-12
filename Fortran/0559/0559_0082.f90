MODULE mod1
TYPE ty(k3)
  INTEGER,KIND::k3
  INTEGER::xx(k3)
END TYPE
TYPE,EXTENDS (ty):: ty1(k1, k2)
  INTEGER ,KIND::k1,k2=6
  CHARACTER(LEN=k2+2)::ch(k1:k2)
  REAL::arr(k2)
END TYPE
TYPE ty2
  INTEGER::val
  TYPE(ty1(4,2,4))::cmp_ty1 = ty1(4,2,4)(ty(4)(10),'HI',15.0)
END TYPE
END MODULE
PROGRAM main
USE mod1
TYPE(ty2),TARGET::obj = ty2(10,ty1(4,2,4)(ty(4)(20),'HI-PDT',30.0))
CLASS(ty2),POINTER::obj_ptr
obj_ptr=>obj
SELECT TYPE (aa=>obj_ptr)
  TYPE IS(ty2)
      IF(any(aa%cmp_ty1%arr /= 30.00)) PRINT*,'101',aa%cmp_ty1%arr
      IF(any(aa%cmp_ty1%xx /= 20)) PRINT*,'102',aa%cmp_ty1%xx
      IF(aa%cmp_ty1%k1 /= 2) PRINT*,'103',aa%cmp_ty1%k1
      IF(aa%cmp_ty1%k2 /= 4) PRINT*,'104',aa%cmp_ty1%k2
      print*,'PASS'
  CLASS IS (ty2)
      PRINT*,'FAIL'
END SELECT
END PROGRAM
