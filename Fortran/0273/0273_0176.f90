REAL(2) :: R2
COMPLEX(2) :: C2
DATA R2/1.0/ 
DATA C2/(4,5)/ 
IF(R2 .NE. 1)PRINT*,"101"
IF(C2 .NE. (4,5))PRINT*,"102"
PRINT*,"PASS"
END
