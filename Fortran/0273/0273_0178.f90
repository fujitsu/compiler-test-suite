TYPE TY
REAL :: R2(2)=5.0_2
COMPLEX :: C2(4)=(6.0_2,7.0_2)
END TYPE

TYPE(TY) :: OBJ
IF(OBJ%R2(1) .NE. 5.0_2)PRINT*,"101"
IF(ANY(OBJ%C2(2:4) .NE. (6.0_2,7.0_2)))PRINT*,"102"
PRINT*,"PASS"
END