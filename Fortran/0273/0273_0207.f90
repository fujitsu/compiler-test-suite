REAL(2) :: R2
POINTER :: R2
REAL(2) :: R2_TRG
TARGET :: R2_TRG
COMPLEX(2) :: C2
POINTER :: C2
COMPLEX(2) :: C2_TRG
TARGET :: C2_TRG
R2_TRG=5
C2_TRG=(6,7)
R2=>R2_TRG
C2=>C2_TRG
IF(R2 .NE. 5)PRINT*,"101"
IF(C2 .NE. (6,7))PRINT*,"102"
PRINT*,"PASS"
END
