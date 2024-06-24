MODULE M
TYPE TY
REAL(2) :: R2
COMPLEX(2) :: C2 
END TYPE
INTERFACE ASSIGNMENT ( = )
MODULE PROCEDURE REAL_TO_OBJ, COMPLEX_TO_OBJ
END INTERFACE ASSIGNMENT ( = )
CONTAINS 
 SUBROUTINE REAL_TO_OBJ(B1, B2)
  TYPE(TY),INTENT(OUT) :: B1
  REAL(2),INTENT(IN) :: B2
  B1%R2=B2
 END SUBROUTINE
 SUBROUTINE COMPLEX_TO_OBJ(B1, B2)
  TYPE(TY),INTENT(INOUT) :: B1
  COMPLEX(2),INTENT(IN) :: B2
  B1%C2=B2
 END SUBROUTINE
END MODULE

PROGRAM PRO
USE M
TYPE(TY) :: OBJ
REAL(2) :: KK=4.0
COMPLEX(2) :: JJ=(5.0,6.0)
OBJ=KK
OBJ=JJ
IF(OBJ% R2 .NE. 4.0)PRINT*,"101"
IF(OBJ% C2 .NE. (5.0,6.0))PRINT*,"102"
PRINT*,"PASS"
END

