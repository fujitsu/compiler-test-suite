REAL(2) :: R2(4)
COMPLEX(KIND=2) :: C2(4)
REAL(8) :: R8
COMPLEX(16) :: C16
R2=5 
C2=(6,7)     
R8=6
C16=(8,9)
ASSOCIATE(R1=>R2(3:4),C1=>C2(1)+1,R3=>R2(1)+R8,C3=>C2(1)+C16)
IF(ANY(R1 .NE. 5))PRINT*,"101"
IF(C1 .NE. (7,7))PRINT*,"102"
IF(KIND(R1) .NE. 2)PRINT*,"103"
IF(KIND(C1) .NE. 2)PRINT*,"104"
IF(R3 .NE. 11)PRINT*,"105"
IF(KIND(R3) .NE. 8)PRINT*,"106"
IF(C3 .NE. (14,16))PRINT*,"107"
IF(KIND(C3) .NE. 16)PRINT*,"108"
PRINT*,"PASS"
END ASSOCIATE
END
