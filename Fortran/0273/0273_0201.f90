TYPE:: TY
REAL(2),ALLOCATABLE :: R2(:)
COMPLEX(2),ALLOCATABLE:: C2(:)
END TYPE
TYPE, EXTENDS(TY) :: TY1
REAL(2)::M2
END TYPE

CLASS(TY),POINTER :: OBJ
TYPE(TY1),TARGET :: OBJ2
OBJ2=TY1((/1.0/),(/(2,3)/),5.0)
OBJ=>OBJ2
ALLOCATE(OBJ,SOURCE=OBJ2)
IF(ANY(OBJ%R2 .NE. 1.0))PRINT*,"101"
IF(ANY(OBJ%C2 .NE. (2,3)))PRINT*,"102"
PRINT*,"PASS"

END
