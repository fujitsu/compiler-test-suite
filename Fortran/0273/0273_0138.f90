REAL(2) :: R2(3) = 1.0
REAL(4) :: R4(1:3) = 2.0
REAL(8) :: R8(3) = 3.0

INTEGER(1) :: I1(3) = 4
INTEGER(2) :: I2(3) = 5
INTEGER(4) :: I4(3) = 6
INTEGER(8) :: I8(3) = 7

COMPLEX(2) :: C2(3) = (2,3)     
COMPLEX(4) :: C4(3) = (4,5)     
COMPLEX(8) :: C8(3) = (6,7)     

IF(R2(1)+R4(2) .NE. 3)PRINT*,"101"
IF(R8(2)-R2(2) .NE. 2)PRINT*,"102"
IF(R4(3)*R2(3) .NE. 2)PRINT*,"103"

IF(I1(2)-R2(2) .NE. 3)PRINT*,"104"
IF(R2(1)-I2(1) .NE. -4)PRINT*,"105" 
IF(R2(3)+I4(3) .NE. 7)PRINT*,"106"
IF(R2(1)*I8(3) .NE. 7)PRINT*,"107"

IF(R2(2)*C2(3) .NE. (1*(2,3)))PRINT*,"108"
IF(C4(1)+R2(1) .NE. (5,5))PRINT*,"109"
IF(R2(2)-C8(2) .NE. (1-(6,7)))PRINT*,"110"

PRINT*,"PASS"
END
