MODULE mod1
 
 INTEGER :: counter=0

 TYPE ty
 INTEGER :: ii = 5
 PROCEDURE(sub),PASS(d1),POINTER :: prc
 CONTAINS
 FINAL :: des
 END TYPE

CONTAINS
 PURE SUBROUTINE des(dmy)
   TYPE(ty),INTENT(IN) :: dmy
 END SUBROUTINE

 PURE FUNCTION sub(d1) result(res)
  CLASS(ty),INTENT(IN) :: d1
  INTEGER :: res
  res = d1%ii
 END FUNCTION
END MODULE

PROGRAM MAIN
 use mod1
 IMPLICIT NONE
 INTEGER :: K,num,L,M
 TYPE(ty) :: obj
 num=0
 obj%prc => sub
 DO CONCURRENT(K=1:3,L=2:3)
   DO CONCURRENT(M=1:3,K /=L)
      num=num + obj%prc()
   END DO
 END DO

 IF(obj%ii==5) THEN
   PRINT *,"PASS"
 ELSE
   PRINT *,"FAIL",obj%ii
 END IF
END PROGRAM

