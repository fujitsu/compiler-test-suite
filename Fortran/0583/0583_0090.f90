MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ1(:)
TYPE(NODE),ALLOCATABLE :: OBJ2(:)

CONTAINS 
SUBROUTINE SUB (DMY, RES)
TYPE(NODE), ALLOCATABLE, INTENT(OUT)::DMY(:)
TYPE(NODE), ALLOCATABLE::RES(:)

ALLOCATE(DMY(3))

DMY = RES
END SUBROUTINE
END MODULE

USE MOD1
ALLOCATE(OBJ1(3))
ALLOCATE(OBJ1(1)%VALUE)
ALLOCATE(OBJ1(2)%VALUE)
ALLOCATE(OBJ1(3)%VALUE)

ALLOCATE(OBJ1(2)%NEXT_NODE(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(2))
ALLOCATE(OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE(4))
ALLOCATE(OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(3)%NEXT_NODE(4))

ALLOCATE(OBJ1(2)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(3)%VALUE)

OBJ1(1)%VALUE = 11
OBJ1(2)%VALUE = 12
OBJ1(3)%VALUE = 13
OBJ1(2)%NEXT_NODE(2)%VALUE = 14
OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 15
OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 16
OBJ1(2)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(3)%VALUE = 17

ALLOCATE(OBJ2(3))
ALLOCATE(OBJ2(1)%VALUE)
ALLOCATE(OBJ2(3)%VALUE)

ALLOCATE(OBJ2(3)%NEXT_NODE(2))
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(3))
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2))
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(3)%NEXT_NODE(4))
ALLOCATE(OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(5))
ALLOCATE(OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(2)%NEXT_NODE(5))

ALLOCATE(OBJ2(3)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)

OBJ2(1)%VALUE = 21
OBJ2(3)%VALUE = 22
OBJ2(3)%NEXT_NODE(2)%VALUE = 23
OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 24
OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 25
OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 26

CALL SUB(OBJ1, OBJ2)

OBJ2(1)%VALUE = 31
OBJ2(3)%VALUE = 32
OBJ2(3)%NEXT_NODE(2)%VALUE = 33
OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 34
OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 35
OBJ2(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 36

if (OBJ1(1)%VALUE /= 21) print*, 101
if (OBJ1(3)%VALUE /= 22) print*, 102
if (OBJ1(3)%NEXT_NODE(2)%VALUE /= 23) print*, 103, OBJ1(3)%NEXT_NODE(2)%VALUE
if (OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE /= 24) print*, 104, OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE
if (OBJ1(3)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE /= 25) print*, 105, OBJ1(3)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE
if (OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE /= 26) print*, 106, OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE

if (SIZE(OBJ1(3)%NEXT_NODE) /= 2) print*, 201
if (SIZE(OBJ1(3)%NEXT_NODE(1)%NEXT_NODE) /= 3) print*, 202
if (SIZE(OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE) /= 2) print*, 203
if (SIZE(OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE) /= 3) print*, 204
if (SIZE(OBJ1(3)%NEXT_NODE(1)%NEXT_NODE(3)%NEXT_NODE) /= 4) print*, 205
if (SIZE(OBJ1(3)%NEXT_NODE(2)%NEXT_NODE) /= 5) print*, 206
if (SIZE(OBJ1(3)%NEXT_NODE(2)%NEXT_NODE(2)%NEXT_NODE) /= 5) print*, 207

print*,"PASS"
END
