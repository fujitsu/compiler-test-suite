TYPE TS
INTEGER:: II
CHARACTER(LEN=:),ALLOCATABLE::MSG
END TYPE

TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:,:)
TYPE (TS) :: NO_NODE(4)
TYPE (NODE), ALLOCATABLE :: PREV_NODE(:,:)
END TYPE

TYPE TY
TYPE(NODE),ALLOCATABLE :: OBJ
TYPE(NODE),ALLOCATABLE :: OBJ2
END TYPE

TYPE TT
TYPE(TY):: OBJTY(3)
END TYPE

TYPE(TT)::OBJTT
TYPE(TT)::OBJTT1

ALLOCATE(OBJTT%OBJTY(2)%OBJ2)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3))
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(4,4))
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(5,5))

ALLOCATE(OBJTT%OBJTY(2)%OBJ2%VALUE)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%VALUE)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%VALUE)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(3,3)%VALUE)

ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2))
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(3,3))
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(4,4))

ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%VALUE)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%VALUE)
ALLOCATE(OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(2,2)%VALUE)

OBJTT%OBJTY(2)%OBJ2%VALUE = 21
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%VALUE = 22
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%VALUE = 23
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(3,3)%VALUE = 24

OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%VALUE = 25
OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%VALUE = 26
OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(2,2)%VALUE = 27

CALL SUB((OBJTT), OBJTT1)

OBJTT%OBJTY(2)%OBJ2%VALUE = 31
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%VALUE = 32
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%VALUE = 33
OBJTT%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(3,3)%VALUE = 34

OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%VALUE = 35
OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%VALUE = 36
OBJTT%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(2,2)%VALUE = 37

if (OBJTT1%OBJTY(2)%OBJ2%VALUE /= 21) print*, 201
if (OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%VALUE /= 22) print*, 202
if (OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%VALUE /= 23) print*, 203
if (OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(3,3)%VALUE /= 24) print*, 204

if (OBJTT1%OBJTY(2)%OBJ2%PREV_NODE(2,2)%VALUE /= 25) print*, 205
if (OBJTT1%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%VALUE /= 26) print*, 206
if (OBJTT1%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(2,2)%VALUE /= 27) print*, 207

if (SIZE(OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE) /= 9) print*, 921
if (SIZE(OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE) /= 16) print*, 922
if (SIZE(OBJTT1%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE) /= 25) print*, 923

if (SIZE(OBJTT1%OBJTY(2)%OBJ2%PREV_NODE) /= 4) print*, 924
if (SIZE(OBJTT1%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE) /= 9) print*, 925
if (SIZE(OBJTT1%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE) /= 16) print*, 926

CONTAINS
SUBROUTINE SUB(DMY, RES)
TYPE(TT)::DMY
TYPE(TT),INTENT(OUT)::RES

RES = DMY

if (RES%OBJTY(2)%OBJ2%VALUE /= 21) print*, 101
if (RES%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%VALUE /= 22) print*, 102
if (RES%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%VALUE /= 23) print*, 103
if (RES%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE(3,3)%VALUE /= 24) print*, 104

if (RES%OBJTY(2)%OBJ2%PREV_NODE(2,2)%VALUE /= 25) print*, 105
if (RES%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%VALUE /= 26) print*, 106
if (RES%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE(2,2)%VALUE /= 27) print*, 107

if (SIZE(RES%OBJTY(2)%OBJ2%NEXT_NODE) /= 9) print*, 901
if (SIZE(RES%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE) /= 16) print*, 902
if (SIZE(RES%OBJTY(2)%OBJ2%NEXT_NODE(3,3)%PREV_NODE(3,3)%NEXT_NODE) /= 25) print*, 903

if (SIZE(RES%OBJTY(2)%OBJ2%PREV_NODE) /= 4) print*, 904
if (SIZE(RES%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE) /= 9) print*, 905
if (SIZE(RES%OBJTY(2)%OBJ2%PREV_NODE(2,2)%NEXT_NODE(2,2)%PREV_NODE) /= 16) print*, 906

print*,"PASS"
END SUBROUTINE
END