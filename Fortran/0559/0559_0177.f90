MODULE mod1
TYPE ty(k1, k2)
  INTEGER,KIND::k1,k2
  CHARACTER(LEN=k2)::ch
END TYPE
INTERFACE OPERATOR(+)
    FUNCTION ADD(dmy1, dmy2) RESULT(res)
      IMPORT ty
      TYPE(ty(2,8)),INTENT(IN):: dmy1,dmy2
      TYPE(ty(2,8))::res
    END FUNCTION
END INTERFACE
END MODULE
PROGRAM main
USE mod1
type(ty(2,8))::res
res= ty(2,8)('HI-') + ty(2,8)(ch= 'PDT')

IF(res%ch /= 'HI-PDT') PRINT*,res%ch
IF(res%k1 /= 2) PRINT*,res%k1
IF(res%k2 /= 8) PRINT*,res%k2
IF(LEN(res%ch) /= 8) PRINT*,LEN(res%ch)
PRINT*,'pass'

END PROGRAM
FUNCTION ADD(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty(2,8)),INTENT(IN):: dmy1,dmy2
  TYPE(ty(2,8))::res
  res%ch = dmy1%ch(1:3) // dmy2%ch(1:3)
END FUNCTION
