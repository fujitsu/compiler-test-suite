TYPE TY0
INTEGER,ALLOCATABLE :: II(:)
TYPE(TY0),ALLOCATABLE :: NODE0(:)
TYPE(TY),ALLOCATABLE :: NODE4(:)
INTEGER,ALLOCATABLE :: JJ
TYPE(TY1),ALLOCATABLE :: NODE7(:)
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE :: II(:)
TYPE(TY1), ALLOCATABLE :: NODE1(:)
TYPE(TY0),ALLOCATABLE :: NODE2(:)
TYPE(TY),ALLOCATABLE :: NODE5(:)
INTEGER,ALLOCATABLE :: JJ
END TYPE

TYPE TY
INTEGER,ALLOCATABLE :: II(:)
TYPE(TY1), ALLOCATABLE :: NODE3(:)
INTEGER,ALLOCATABLE :: JJ
TYPE(TY),ALLOCATABLE :: NODE6(:)
END TYPE

TYPE BASE
TYPE(TY),ALLOCATABLE :: OBJ2(:)
END TYPE

TYPE(BASE):: OBJ_BASE

ALLOCATE(OBJ_BASE%OBJ2(6))
ALLOCATE(OBJ_BASE%OBJ2(4)%II(3))

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE2(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE2(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE5(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE5(3)%II(3))

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE6(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE6(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE6(3)%NODE6(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE6(3)%NODE6(3)%II(3))

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(3)%II(3))

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%NODE0(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%NODE0(4)%II(3))

OBJ_BASE%OBJ2(4)%II = 20
OBJ_BASE%OBJ2(4)%NODE3(3)%II = 21
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%II = 22
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE1(3)%II = 23
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%II = 24
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%II = 25
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(3)%II = 26

OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%II = 27
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%II = 28
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%II = 29
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%NODE0(4)%II = 299

OBJ_BASE%OBJ2(4)%NODE6(3)%II = 121
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%II = 122
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%II = 123
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(3)%II = 124
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(3)%II = 125
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5(3)%II = 126
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE2(3)%II = 127
OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE5(3)%II = 128

DEALLOCATE(OBJ_BASE%OBJ2)

IF(ALLOCATED(OBJ_BASE%OBJ2)) print*, 101
print*,"PASS"
END