MODULE mod1
TYPE ty(k1, k2)
  INTEGER,KIND::k1,k2
END TYPE
TYPE, EXTENDS(ty)::ty1(k3)
  INTEGER,KIND::k3
END TYPE
INTERFACE OPERATOR(+)
    FUNCTION ADD_ty(dmy1, dmy2) RESULT(res)
      IMPORT ty
      TYPE(ty(2,4)),INTENT(IN):: dmy1,dmy2
      TYPE(ty(2,4))::res
    END FUNCTION
    FUNCTION ADD_ty1(dmy1, dmy2) RESULT(res)
      IMPORT ty1
      TYPE(ty1(2,4,6)),INTENT(IN):: dmy1,dmy2
      TYPE(ty1(2,4,6))::res
    END FUNCTION
END INTERFACE
END MODULE
PROGRAM main
USE mod1
TYPE(ty1(2,4,6))::res_ty1
res_ty1= ty1(2,4,6)() + ty1(2,4,6)()
IF(res_ty1%k2 /= 4) PRINT*,'101',res_ty1%k2
IF(res_ty1%k3 /= 6) PRINT*,'102',res_ty1%k3
IF(SIZEOF(res_ty1) /= 0) PRINT*,'103',SIZEOF(res_ty1)
PRINT*,'pass'

END PROGRAM
FUNCTION ADD_ty(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty(2,4)),INTENT(IN):: dmy1,dmy2
  TYPE(ty(2,4))::res
  if(dmy1%k1 /= 2) print*,'104',dmy1%k1
  if(dmy2%k2 /= 2) print*,'105',dmy2%k2
END FUNCTION
FUNCTION ADD_ty1(dmy1, dmy2) RESULT(res)
USE mod1
  TYPE(ty1(2,4,6)),INTENT(IN):: dmy1,dmy2
  TYPE(ty1(2,4,6))::res
  if(dmy1%k3 /= 6) print*,'106',dmy1%k3
  if(dmy2%k3 /= 6) print*,'107',dmy2%k3
END FUNCTION
