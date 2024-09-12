TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE
TYPE (NODE), ALLOCATABLE :: PREV_NODE
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ

ALLOCATE(OBJ)
ALLOCATE(OBJ%NEXT_NODE)
ALLOCATE(OBJ%NEXT_NODE%VALUE)
ALLOCATE(OBJ%NEXT_NODE%PREV_NODE)
ALLOCATE(OBJ%NEXT_NODE%PREV_NODE%VALUE)
ALLOCATE(OBJ%NEXT_NODE%PREV_NODE%NEXT_NODE)
ALLOCATE(OBJ%NEXT_NODE%PREV_NODE%NEXT_NODE%VALUE)

ALLOCATE(OBJ%PREV_NODE)
ALLOCATE(OBJ%PREV_NODE%VALUE)
ALLOCATE(OBJ%PREV_NODE%NEXT_NODE)
ALLOCATE(OBJ%PREV_NODE%NEXT_NODE%VALUE)
ALLOCATE(OBJ%PREV_NODE%NEXT_NODE%PREV_NODE)
ALLOCATE(OBJ%PREV_NODE%NEXT_NODE%PREV_NODE%VALUE)

OBJ%NEXT_NODE%VALUE = 10
OBJ%NEXT_NODE%PREV_NODE%VALUE = 11
OBJ%NEXT_NODE%PREV_NODE%NEXT_NODE%VALUE = 12

DEALLOCATE(OBJ)

if (ALLOCATED(OBJ)) print*, 101
print*,"PASS"
END