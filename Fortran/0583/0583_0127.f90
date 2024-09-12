TYPE TY0
INTEGER,ALLOCATABLE :: II
TYPE(TY0),ALLOCATABLE :: NODE0(:)
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE :: II
TYPE(TY1), ALLOCATABLE :: NODE1(:)
TYPE(TY0),ALLOCATABLE :: NODE2
END TYPE

TYPE TY
INTEGER,ALLOCATABLE :: II
TYPE(TY1), ALLOCATABLE :: NODE3(:)
END TYPE

TYPE(TY),ALLOCATABLE :: OBJ(:)
TYPE(TY),ALLOCATABLE :: OBJ2(:)

ALLOCATE(OBJ(6))
ALLOCATE(OBJ(2)%II)
ALLOCATE(OBJ(2)%NODE3(3))
ALLOCATE(OBJ(2)%NODE3(2)%II)

ALLOCATE(OBJ(2)%NODE3(2)%NODE1(3))

ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE1(4))
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE1(2)%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2)
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(3))
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(2)%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(2)%NODE0(3))
ALLOCATE(OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(2)%NODE0(2)%II)

ALLOCATE(OBJ(2)%NODE3(2)%NODE2)
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(4))
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(3)%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(4))
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(3)%II)
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(3)%NODE0(4))
ALLOCATE(OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(3)%NODE0(3)%II)

ALLOCATE(OBJ2(6))
ALLOCATE(OBJ2(4)%II)
ALLOCATE(OBJ2(4)%NODE3(4))
ALLOCATE(OBJ2(4)%NODE3(3)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(4))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(5))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(3)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(4))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%NODE0(4))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%NODE0(3)%II)

ALLOCATE(OBJ2(4)%NODE3(3)%NODE2)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(5))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(5))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%II)
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%NODE0(5))
ALLOCATE(OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%NODE0(4)%II)

OBJ(2)%II = 10
OBJ(2)%NODE3(2)%II = 11
OBJ(2)%NODE3(2)%NODE1(2)%II = 12
OBJ(2)%NODE3(2)%NODE1(2)%NODE1(2)%II = 13
OBJ(2)%NODE3(2)%NODE1(2)%NODE2%II = 14
OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(2)%II = 15
OBJ(2)%NODE3(2)%NODE1(2)%NODE2%NODE0(2)%NODE0(2)%II = 16
OBJ(2)%NODE3(2)%NODE2%II = 17
OBJ(2)%NODE3(2)%NODE2%NODE0(3)%II = 18
OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(3)%II = 19
OBJ(2)%NODE3(2)%NODE2%NODE0(3)%NODE0(3)%NODE0(3)%II = 199

OBJ2(4)%II = 20
OBJ2(4)%NODE3(3)%II = 21
OBJ2(4)%NODE3(3)%NODE1(3)%II = 22
OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(3)%II = 23
OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%II = 24
OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%II = 25
OBJ2(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%NODE0(3)%II = 26
OBJ2(4)%NODE3(3)%NODE2%II = 27
OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%II = 28
OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%II = 29
OBJ2(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%NODE0(4)%II = 299

CALL move_alloc(OBJ2, OBJ)

IF (OBJ(4)%II /= 20) print*, 102
IF (OBJ(4)%NODE3(3)%II /= 21) print*, 103
IF (OBJ(4)%NODE3(3)%NODE1(3)%II /= 22) print*, 104
IF (OBJ(4)%NODE3(3)%NODE1(3)%NODE1(3)%II /= 23) print*, 105
IF (OBJ(4)%NODE3(3)%NODE1(3)%NODE2%II /= 24) print*, 106
IF (OBJ(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%II /= 25) print*, 107
IF (OBJ(4)%NODE3(3)%NODE1(3)%NODE2%NODE0(3)%NODE0(3)%II /= 26) print*, 108
IF (OBJ(4)%NODE3(3)%NODE2%II /= 27) print*, 109
IF (OBJ(4)%NODE3(3)%NODE2%NODE0(4)%II /= 28) print*, 110
IF (OBJ(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%II /= 29) print*, 111
IF (OBJ(4)%NODE3(3)%NODE2%NODE0(4)%NODE0(4)%NODE0(4)%II /= 299) print*, 112

print*,"PASS"
END