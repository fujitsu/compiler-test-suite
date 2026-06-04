MODULE mod1
TYPE ty(k1, k2)
  INTEGER,KIND::k1,k2
  CHARACTER(LEN=k2+2)::ch
END TYPE
TYPE ty1
  TYPE(ty(2,6))::cmp_ty
END TYPE
INTERFACE OPERATOR(+)
    FUNCTION ADD_ty(dmy1, dmy2) RESULT(res)
      IMPORT ty
      TYPE(ty(2,6)),INTENT(IN):: dmy1,dmy2
      TYPE(ty(2,6))::res
    END FUNCTION
    FUNCTION ADD_ty1(dmy1, dmy2) RESULT(res)
      IMPORT ty1
      TYPE(ty1),INTENT(IN):: dmy1,dmy2
      TYPE(ty1)::res
    END FUNCTION
END INTERFACE
END MODULE
PROGRAM main
USE mod1
TYPE(ty1)::res_ty1
res_ty1= ty1(ty(2,6)('HI-')) + ty1(cmp_ty = ty(2,6)('PDT'))

IF(res_ty1%cmp_ty%ch /= 'HI-PDT') PRINT*,res_ty1%cmp_ty%ch
IF(res_ty1%cmp_ty%k2 /= 6) PRINT*,res_ty1%cmp_ty%k2
IF(LEN(res_ty1%cmp_ty%ch) /= 8) PRINT*,LEN(res_ty1%cmp_ty%ch)
PRINT*,'pass'

END PROGRAM
FUNCTION ADD_ty(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty(2,6)),INTENT(IN):: dmy1,dmy2
  TYPE(ty(2,6))::res
  res%ch = dmy1%ch(1:3) // dmy2%ch(1:3)
END FUNCTION
FUNCTION ADD_ty1(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty1),INTENT(IN):: dmy1,dmy2
  TYPE(ty1)::res
  res%cmp_ty = dmy1%cmp_ty + dmy2%cmp_ty
END FUNCTION
