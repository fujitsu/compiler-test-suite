MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty1
END TYPE
CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy
  PRINT*,'in destructor'
  PRINT*,dmy%ii
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty)::fun1
  TYPE(ty)::fun2
  INTEGER::dmy
  fun1%ii=10
  return
  entry fun2(dmy)
    fun2%ii=dmy
    return
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::res
INTEGER::k
k=2
res=MERGE(fun1(),fun2(30),k<0)
if(res%ii .ne. 30 )print*,201
END
