TYPE TY0
INTEGER,ALLOCATABLE :: II
TYPE(TY0),ALLOCATABLE :: NODE0
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE :: II
TYPE(TY1), ALLOCATABLE :: NODE1
TYPE(TY0),ALLOCATABLE :: NODE2
END TYPE

TYPE TY
INTEGER,ALLOCATABLE :: II
TYPE(TY1), ALLOCATABLE :: NODE3
END TYPE

TYPE BASE
TYPE(TY),ALLOCATABLE :: OBJ(:)
TYPE(TY),ALLOCATABLE :: OBJ2(:)
END TYPE

TYPE(BASE):: OBJ_BASE

ALLOCATE(OBJ_BASE%OBJ(3))
ALLOCATE(OBJ_BASE%OBJ(2)%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE1)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE1%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%NODE0%II)

ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%NODE0%II)

ALLOCATE(OBJ_BASE%OBJ2(6))
ALLOCATE(OBJ_BASE%OBJ2(4)%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE1)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE1%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%NODE0%II)

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%II)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%NODE0)
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%NODE0%II)

OBJ_BASE%OBJ(2)%II = 10
OBJ_BASE%OBJ(2)%NODE3%II = 11
OBJ_BASE%OBJ(2)%NODE3%NODE1%II = 12
OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE1%II = 13
OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%II = 14
OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%II = 15
OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%NODE0%II = 16
OBJ_BASE%OBJ(2)%NODE3%NODE2%II = 17
OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%II = 18
OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%II = 19
OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%NODE0%II = 199

OBJ_BASE%OBJ2(4)%II = 20
OBJ_BASE%OBJ2(4)%NODE3%II = 21
OBJ_BASE%OBJ2(4)%NODE3%NODE1%II = 22
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE1%II = 23
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%II = 24
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%II = 25
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%NODE0%II = 26
OBJ_BASE%OBJ2(4)%NODE3%NODE2%II = 27
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%II = 28
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%II = 29
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%NODE0%II = 299

OBJ_BASE%OBJ = OBJ_BASE%OBJ2(3:5)

OBJ_BASE%OBJ2(4)%II = 30
OBJ_BASE%OBJ2(4)%NODE3%II = 31
OBJ_BASE%OBJ2(4)%NODE3%NODE1%II = 32
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE1%II = 33
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%II = 34
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%II = 35
OBJ_BASE%OBJ2(4)%NODE3%NODE1%NODE2%NODE0%NODE0%II = 36
OBJ_BASE%OBJ2(4)%NODE3%NODE2%II = 37
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%II = 38
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%II = 39
OBJ_BASE%OBJ2(4)%NODE3%NODE2%NODE0%NODE0%NODE0%II = 399


if (OBJ_BASE%OBJ(2)%II /= 20) print*, 102
if (OBJ_BASE%OBJ(2)%NODE3%II /= 21) print*, 103
if (OBJ_BASE%OBJ(2)%NODE3%NODE1%II /= 22) print*, 104
if (OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE1%II /= 23) print*, 105
if (OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%II /= 24) print*, 106
if (OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%II /= 25) print*, 107
if (OBJ_BASE%OBJ(2)%NODE3%NODE1%NODE2%NODE0%NODE0%II /= 26) print*, 108
if (OBJ_BASE%OBJ(2)%NODE3%NODE2%II /= 27) print*, 109
if (OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%II /= 28) print*, 110
if (OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%II /= 29) print*, 111
if (OBJ_BASE%OBJ(2)%NODE3%NODE2%NODE0%NODE0%NODE0%II /= 299) print*, 112

print*,"PASS"
END
