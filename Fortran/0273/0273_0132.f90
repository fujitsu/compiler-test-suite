TYPE TY
REAL(KIND=2),ALLOCATABLE :: R1
REAL(KIND=2),ALLOCATABLE :: R2(:)
REAL(KIND=2) :: SRC(2)
END TYPE
TYPE(TY) :: OBJ
OBJ%SRC=4
ALLOCATE(REAL(KIND=2)::OBJ%R1)
ALLOCATE(OBJ%R2,MOLD=OBJ%SRC)
OBJ%R2=4 
IF(ALLOCATED(OBJ%R1) .EQV. .FALSE.)PRINT*,"102"
IF(ANY(OBJ%R2 .NE. 4))PRINT*,"1022"
IF(ALLOCATED(OBJ%R2) .EQV. .FALSE.)PRINT*,"103"
PRINT*,"PASS"
END