TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ

ALLOCATE(OBJ)
ALLOCATE(OBJ%NEXT_NODE)
ALLOCATE(OBJ%NEXT_NODE%NEXT_NODE)
ALLOCATE(OBJ%NEXT_NODE%NEXT_NODE%NEXT_NODE)

ALLOCATE(OBJ%VALUE)
ALLOCATE(OBJ%NEXT_NODE%VALUE)
ALLOCATE(OBJ%NEXT_NODE%NEXT_NODE%VALUE)
ALLOCATE(OBJ%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE)

OBJ%VALUE = 10
OBJ%NEXT_NODE%VALUE = 11
OBJ%NEXT_NODE%NEXT_NODE%VALUE = 12
OBJ%NEXT_NODE%NEXT_NODE%NEXT_NODE%VALUE = 13

DEALLOCATE(OBJ)

IF(ALLOCATED(OBJ))print*,101

PRINT*,"PASS"
END
