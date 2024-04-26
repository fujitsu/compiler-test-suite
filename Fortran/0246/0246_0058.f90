MODULE mod1

  TYPE ty
    integer :: ii = 5
  CONTAINS
    PROCEDURE,PASS(d1) :: sub=>fun
  END TYPE
   
  TYPE ty2
    integer :: jj=10
  END TYPE

CONTAINS
   FUNCTION fun(d1,d2,d3,d4) result(res)
   CLASS(ty) :: d1
   TYPE(ty) :: res
    INTEGER :: d2,d3,d4
    INTEGER :: K,L,M
    DO CONCURRENT(K=1:d2,L=2:d3)
      DO CONCURRENT(M=3:d4,K /= L)
        d1%ii=d1%ii + K+L+M
      END DO
    END DO
    res = d1
   END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
    type(ty) :: obj
    obj=obj%sub(2,2,3)
    IF(obj%ii==11) THEN
      PRINT *,"PASS"
    ELSE
      PRINT *,"FAIL",obj%ii
    END IF
END PROGRAM
