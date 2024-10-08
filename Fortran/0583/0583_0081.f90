MODULE MOD1
TYPE TY0
INTEGER,ALLOCATABLE:: II
TYPE(TY2),ALLOCATABLE :: NODE0
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE:: JJ
TYPE(TY0), ALLOCATABLE :: NODE1
END TYPE

TYPE TY2
INTEGER,ALLOCATABLE:: KK
TYPE(TY1), ALLOCATABLE :: NODE2
END TYPE

TYPE(TY2),ALLOCATABLE :: OBJ(:)
TYPE(TY2),ALLOCATABLE :: OBJ2(:)
END MODULE

CALL SUB()

CONTAINS
SUBROUTINE SUB()
USE MOD1
ALLOCATE(OBJ(2))
ALLOCATE(OBJ(1)%KK)
ALLOCATE(OBJ(1)%NODE2)
ALLOCATE(OBJ(1)%NODE2%JJ)
ALLOCATE(OBJ(1)%NODE2%NODE1)
ALLOCATE(OBJ(1)%NODE2%NODE1%II)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%KK)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%NODE2)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%NODE2%JJ)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%NODE2%NODE1)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%NODE2%NODE1%II)
ALLOCATE(OBJ(1)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0)

OBJ(1)%KK = 10
OBJ(1)%NODE2%JJ = 11
OBJ(1)%NODE2%NODE1%II = 12
OBJ(1)%NODE2%NODE1%NODE0%KK = 13
OBJ(1)%NODE2%NODE1%NODE0%NODE2%JJ = 14
OBJ(1)%NODE2%NODE1%NODE0%NODE2%NODE1%II = 15

ALLOCATE(OBJ2(2))
ALLOCATE(OBJ2(2)%KK)
ALLOCATE(OBJ2(2)%NODE2)
ALLOCATE(OBJ2(2)%NODE2%JJ)
ALLOCATE(OBJ2(2)%NODE2%NODE1)
ALLOCATE(OBJ2(2)%NODE2%NODE1%II)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%KK)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%JJ)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%II)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%KK)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%JJ)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1%II)
ALLOCATE(OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0)

OBJ2(2)%KK = 20
OBJ2(2)%NODE2%JJ = 21
OBJ2(2)%NODE2%NODE1%II = 22
OBJ2(2)%NODE2%NODE1%NODE0%KK = 23
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%JJ = 24
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%II = 25
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%KK = 26
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%JJ = 27
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1%II = 28

OBJ=OBJ2

OBJ2(2)%KK = 30
OBJ2(2)%NODE2%JJ = 31
OBJ2(2)%NODE2%NODE1%II = 32
OBJ2(2)%NODE2%NODE1%NODE0%KK = 33
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%JJ = 34
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%II = 35
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%KK = 36
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%JJ = 37
OBJ2(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1%II = 38

if (SIZE(OBJ) /= 2)  print*, 911
if (OBJ(2)%KK /= 20) print*, 101
if (OBJ(2)%NODE2%JJ /= 21) print*, 102
if (OBJ(2)%NODE2%NODE1%II /= 22) print*, 103
if (OBJ(2)%NODE2%NODE1%NODE0%KK /= 23) print*, 104
if (OBJ(2)%NODE2%NODE1%NODE0%NODE2%JJ /= 24) print*, 105
if (OBJ(2)%NODE2%NODE1%NODE0%NODE2%NODE1%II /= 25) print*, 106
if (OBJ(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%KK /= 26) print*, 107
if (OBJ(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%JJ /= 27) print*, 108
if (OBJ(2)%NODE2%NODE1%NODE0%NODE2%NODE1%NODE0%NODE2%NODE1%II /= 28) print*, 109

print*,"PASS"
END SUBROUTINE
END
