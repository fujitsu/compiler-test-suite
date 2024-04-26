MODULE mod1
 
 TYPE ty
 INTEGER :: ii = 5
 PROCEDURE(sub),PASS(d1),POINTER :: prc
 END TYPE

CONTAINS
 FUNCTION sub(d1,d2,d3,d4) result(res)
  CLASS(ty) :: d1
  TYPE(ty) :: res
  INTEGER :: d2,d3,d4
  INTEGER :: K,L,M
  DO CONCURRENT(K=1:d2,L=2:d3)
      DO CONCURRENT(M=3:d4,K /= L)
   
          d1%ii = d1%ii + K + L + M
      END DO
  END DO
  res = d1
 END FUNCTION
END MODULE

PROGRAM MAIN
 use mod1
 IMPLICIT NONE
 TYPE(ty) :: obj
 obj%prc => sub
 obj=obj%prc(2,2,3)

 IF(obj%ii==11) THEN
   PRINT *,"PASS"
 ELSE
   PRINT *,"FAIL",obj%ii
 END IF
END PROGRAM

