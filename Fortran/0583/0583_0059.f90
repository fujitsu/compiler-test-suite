TYPE NODE
INTEGER,ALLOCATABLE :: VALUE(:)
CLASS (NODE), ALLOCATABLE :: NEXT_NODE(:)
CLASS (NODE), ALLOCATABLE :: PREV_NODE(:)
END TYPE

TYPE, EXTENDS(NODE)::EXT
INTEGER,ALLOCATABLE :: II(:)
END TYPE

CLASS(NODE),ALLOCATABLE :: OBJ2(:)

ALLOCATE(EXT::OBJ2(2))
ALLOCATE(OBJ2(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(2)%NEXT_NODE(3)%VALUE(3))
ALLOCATE(EXT::OBJ2(2)%NEXT_NODE(3)%PREV_NODE(4))
ALLOCATE(OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%VALUE(4))
ALLOCATE(OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(5))
ALLOCATE(OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE(5))

OBJ2(2)%NEXT_NODE(3)%VALUE = 21
OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 22
OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 23

ALLOCATE(EXT::OBJ2(1)%PREV_NODE(2))
ALLOCATE(OBJ2(1)%PREV_NODE(2)%VALUE(2))
ALLOCATE(EXT::OBJ2(1)%PREV_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE(3))
ALLOCATE(OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(4))
ALLOCATE(OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE(4))

OBJ2(1)%PREV_NODE(2)%VALUE = 24
OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 25
OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 26

DEALLOCATE(OBJ2)

if (ALLOCATED(OBJ2)) print*, 101
print*,"PASS"
END