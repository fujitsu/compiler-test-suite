CALL S()
PRINT*,"PASS"
CONTAINS 
SUBROUTINE S
REAL(KIND=2):: R2(10)
COMPLEX(KIND=2) C2(5)
LOGICAL FLAG1
DATA  FLAG1 /.TRUE./
R2=5
C2=(3,4)
DO 20 WHILE ((R2(1) .LE. 9) .AND. (C2(1) .EQ. (3,4)))
 R2 = R2 + 1
 C2 = C2 + 1
20 IF (.NOT. FLAG1) STOP
IF (ANY(R2 .NE. 6))PRINT*,"101"
IF (ANY(C2 .NE. (4,4)))PRINT*,"102"
END SUBROUTINE
END
