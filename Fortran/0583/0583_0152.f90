MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE(:)
TYPE (NODE), ALLOCATABLE :: ALC(:)
TYPE (NODE), POINTER     :: PTR(:)
END TYPE

TYPE TY
TYPE(NODE),ALLOCATABLE :: OBJ(:)
TYPE(NODE),ALLOCATABLE :: OBJ2(:)
END TYPE

TYPE(TY)::BASE

CONTAINS
SUBROUTINE SUB()
ALLOCATE(BASE%OBJ(2))
ALLOCATE(BASE%OBJ(1)%ALC(2))
ALLOCATE(BASE%OBJ(1)%ALC(2)%VALUE(2))
ALLOCATE(BASE%OBJ(1)%ALC(2)%PTR(3))
ALLOCATE(BASE%OBJ(1)%ALC(2)%PTR(2)%VALUE(3))
ALLOCATE(BASE%OBJ(1)%ALC(2)%PTR(2)%ALC(4))
ALLOCATE(BASE%OBJ(1)%ALC(2)%PTR(2)%ALC(2)%VALUE(4))

BASE%OBJ(1)%ALC(2)%VALUE = 10
BASE%OBJ(1)%ALC(2)%PTR(2)%VALUE = 11
BASE%OBJ(1)%ALC(2)%PTR(2)%ALC(2)%VALUE = 12

ALLOCATE(BASE%OBJ(2)%PTR(3))
ALLOCATE(BASE%OBJ(2)%PTR(3)%ALC(4))
ALLOCATE(BASE%OBJ(2)%PTR(3)%ALC(3)%PTR(5))

ALLOCATE(BASE%OBJ2(2))
ALLOCATE(BASE%OBJ2(2)%ALC(3))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%VALUE(3))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%PTR(4))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%ALC(4))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%PTR(3)%VALUE(4))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%ALC(3)%VALUE(4))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%ALC(3)%ALC(5))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%PTR(3)%ALC(5))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%ALC(3)%ALC(3)%VALUE(5))
ALLOCATE(BASE%OBJ2(2)%ALC(3)%PTR(3)%ALC(3)%VALUE(5))

BASE%OBJ2(2)%ALC(3)%VALUE = 21
BASE%OBJ2(2)%ALC(3)%ALC(3)%VALUE = 22 
BASE%OBJ2(2)%ALC(3)%PTR(3)%VALUE = 23
BASE%OBJ2(2)%ALC(3)%ALC(3)%ALC(3)%VALUE = 24
BASE%OBJ2(2)%ALC(3)%PTR(3)%ALC(3)%VALUE = 25

ALLOCATE(BASE%OBJ2(1)%PTR(2))
ALLOCATE(BASE%OBJ2(1)%PTR(2)%VALUE(2))
ALLOCATE(BASE%OBJ2(1)%PTR(2)%ALC(3))
ALLOCATE(BASE%OBJ2(1)%PTR(2)%ALC(2)%VALUE(3))
ALLOCATE(BASE%OBJ2(1)%PTR(2)%ALC(2)%PTR(4))
ALLOCATE(BASE%OBJ2(1)%PTR(2)%ALC(2)%PTR(2)%VALUE(4))

BASE%OBJ2(1)%PTR(2)%VALUE = 24
BASE%OBJ2(1)%PTR(2)%ALC(2)%VALUE = 25
BASE%OBJ2(1)%PTR(2)%ALC(2)%PTR(2)%VALUE = 26

BASE%OBJ = BASE%OBJ2

BASE%OBJ2(2)%ALC(3)%VALUE = 31
BASE%OBJ2(2)%ALC(3)%ALC(3)%VALUE = 32
BASE%OBJ2(2)%ALC(3)%PTR(3)%VALUE = 33
BASE%OBJ2(2)%ALC(3)%ALC(3)%ALC(3)%VALUE = 34
BASE%OBJ2(2)%ALC(3)%PTR(3)%ALC(3)%VALUE = 35

BASE%OBJ2(1)%PTR(2)%VALUE = 34
BASE%OBJ2(1)%PTR(2)%ALC(2)%VALUE = 35
BASE%OBJ2(1)%PTR(2)%ALC(2)%PTR(2)%VALUE = 36

if (BASE%OBJ(2)%ALC(3)%VALUE(2) /= 21) print*, 101
if (BASE%OBJ(2)%ALC(3)%ALC(3)%VALUE(2) /= 22) print*, 102
if (BASE%OBJ(2)%ALC(3)%PTR(3)%VALUE(2) /= 33) print*, 103
if (BASE%OBJ(2)%ALC(3)%ALC(3)%ALC(3)%VALUE(2) /= 24) print*, 104
if (BASE%OBJ(2)%ALC(3)%PTR(3)%ALC(3)%VALUE(2) /= 35) print*, 105

if (BASE%OBJ(1)%PTR(2)%VALUE(2) /= 34) print*, 106
if (BASE%OBJ(1)%PTR(2)%ALC(2)%VALUE(2) /= 35) print*, 107
if (BASE%OBJ(1)%PTR(2)%ALC(2)%PTR(2)%VALUE(2) /= 36) print*, 108

if (SIZE(BASE%OBJ) /= 2) print*, 201
if (SIZE(BASE%OBJ(2)%ALC) /= 3) print*, 202
if (SIZE(BASE%OBJ(2)%ALC(3)%PTR) /= 4) print*, 203
if (SIZE(BASE%OBJ(2)%ALC(3)%PTR(3)%ALC) /= 5) print*, 204

if (SIZE(BASE%OBJ(1)%PTR) /= 2) print*, 205
if (SIZE(BASE%OBJ(1)%PTR(2)%ALC) /= 3) print*, 206
if (SIZE(BASE%OBJ(1)%PTR(2)%ALC(2)%PTR) /= 4) print*, 207

print*,"PASS"
END SUBROUTINE
END MODULE

USE MOD1

CALL SUB()
END
