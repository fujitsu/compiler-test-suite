SUBROUTINE SUB()
TYPE TY0
INTEGER,ALLOCATABLE :: II
TYPE(TY),ALLOCATABLE :: NODE0
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE :: II
TYPE(TY0),ALLOCATABLE :: NODE2
END TYPE

TYPE TY
INTEGER,ALLOCATABLE :: II
TYPE(TY1), ALLOCATABLE :: NODE3
END TYPE

TYPE(TY),ALLOCATABLE :: OBJ
TYPE(TY),ALLOCATABLE :: OBJ2

CALL move_alloc(OBJ2, OBJ)

print*,"PASS"
END SUBROUTINE 

CALL SUB()
END