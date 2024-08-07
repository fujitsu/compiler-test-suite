TYPE TY
REAL(2):: R2_CMP(4,5)=3
COMPLEX(2) :: C2_CMP(4,5)=(7,8)
INTEGER :: II(4,5)
END TYPE

REAL(2) :: R2(4,5)=2
REAL(2) :: R2_4(4,5)=4
COMPLEX(2) :: C2_1(4,5)=(2,3)
COMPLEX(2) :: C2_2(5,5)=(4,5)

REAL(2) :: REAL_RES(4,5)
COMPLEX(2) :: CMP_RES(4,5)

TYPE(TY) :: OBJ
OBJ%C2_CMP(1:2,3:5)=OBJ%II(1:2,3:5)+R2(1:2,3:5)*R2_4(1:2,3:5)-OBJ%C2_CMP(1:2,3:5)
IF(ANY(OBJ%C2_CMP(1:2,3:5) .NE. (1.0,-8.0)))PRINT*,"101"

CMP_RES(1:2,3:5)=OBJ%II(1:2,3:5)/C2_1(1:2,3:5)+R2_4(1:2,3:5)-C2_2(1:2,3:5)
IF(ANY(CMP_RES(1:2,3:5) .NE. (0.0,-5.0)))PRINT*,"102"

REAL_RES(1:2,3:5)=OBJ%II(1:2,3:5)/C2_1(1:2,3:5)**R2(1:2,3:5)-C2_2(1:2,3:5)
IF(ANY(REAL_RES(1:2,3:5) .NE. (-4.0)))PRINT*,"103"
PRINT*,"PASS"

END
