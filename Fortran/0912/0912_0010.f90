SUBROUTINE SUB()
TYPE NODE
INTEGER :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE
END TYPE

TYPE(NODE),ALLOCATABLE:: OBJ
TYPE(NODE),ALLOCATABLE:: OBJ2

OBJ2%VALUE = 20
OBJ2%NEXT_NODE%VALUE = 21
OBJ2%NEXT_NODE%NEXT_NODE%VALUE = 22
OBJ2%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE = 23
OBJ2%NEXT_NODE%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE = 24

ALLOCATE(OBJ, SOURCE=OBJ2)

OBJ2%VALUE = 30
OBJ2%NEXT_NODE%VALUE = 31
OBJ2%NEXT_NODE%NEXT_NODE%VALUE = 32
OBJ2%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE = 33
OBJ2%NEXT_NODE%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE = 34

if (OBJ%VALUE /= 20) print*, 101
if (OBJ%NEXT_NODE%VALUE /= 21) print*, 102
if (OBJ%NEXT_NODE%NEXT_NODE%VALUE /= 22) print*, 103
if (OBJ%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE /= 23) print*, 104
if (OBJ%NEXT_NODE%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE /= 24) print*, 105

print*,"PASS"
END SUBROUTINE

CALL SUB()
END
