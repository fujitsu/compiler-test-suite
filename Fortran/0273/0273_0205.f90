MODULE M
REAL(2), PROTECTED :: R2=3.0_2
COMPLEX(2) :: C2=(4.0_2,5.0_2)
PROTECTED :: C2
CONTAINS
SUBROUTINE S()
R2=R2+1
C2=C2+(1,1)
END SUBROUTINE
END MODULE

USE M
CALL S()
IF(R2 .NE. 4.0_2)PRINT*,"101"
IF(C2 .NE. (5.0_2,6.0_2))PRINT*,"102"
PRINT*,"PASS"
END