TYPE TY0
INTEGER,ALLOCATABLE :: II(:)
CLASS(TY0),POINTER :: NODE0(:)
CLASS(TY),ALLOCATABLE :: NODE4(:)
INTEGER,ALLOCATABLE :: JJ
TYPE(TY1),ALLOCATABLE :: NODE7(:)
END TYPE

TYPE, EXTENDS(TY0)::TY2
INTEGER,ALLOCATABLE :: TT
END TYPE

TYPE TY1
INTEGER,ALLOCATABLE :: II(:)
TYPE(TY1), ALLOCATABLE :: NODE1(:)
CLASS(TY0),POINTER :: NODE2(:)
CLASS(TY),ALLOCATABLE :: NODE5(:)
INTEGER,ALLOCATABLE :: JJ
END TYPE

TYPE TY
INTEGER,ALLOCATABLE :: II(:)
TYPE(TY1), ALLOCATABLE :: NODE3(:)
INTEGER,ALLOCATABLE :: JJ
CLASS(TY),ALLOCATABLE :: NODE6(:)
END TYPE

TYPE, EXTENDS(TY)::EXT
INTEGER,ALLOCATABLE :: ZZ(:)
END TYPE

TYPE BASE
CLASS(TY),ALLOCATABLE :: OBJ2(:)
END TYPE

TYPE(BASE):: OBJ_BASE

ALLOCATE(EXT::OBJ_BASE%OBJ2(6))
ALLOCATE(OBJ_BASE%OBJ2(4)%II(3))

ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(3)%II(3))
ALLOCATE(TY2::OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(3)%II(3))
ALLOCATE(EXT::OBJ_BASE%OBJ2(4)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5(4))
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
ALLOCATE(TY0::OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(5))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%II(3))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%II(3))
ALLOCATE(TY2::OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(4))
ALLOCATE(OBJ_BASE%OBJ2(4)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(3)%II(3))

ALLOCATE(TY2::OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(5))
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

CALL SUB((OBJ_BASE%OBJ2(3:5)))

OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%II = 37
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%II = 38
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%II = 39
OBJ_BASE%OBJ2(4)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%NODE0(4)%II = 399

CONTAINS
SUBROUTINE SUB(DMY)
CLASS(TY)::DMY(:)

IF (DMY(2)%II(3) /= 20) print*, 102
IF (DMY(2)%NODE3(3)%II(3) /= 21) print*, 103
IF (DMY(2)%NODE3(3)%NODE1(3)%II(3) /= 22) print*, 104
IF (DMY(2)%NODE3(3)%NODE1(3)%NODE1(3)%II(3) /= 23) print*, 105
IF (DMY(2)%NODE3(3)%NODE1(3)%NODE2(3)%II(3) /= 24) print*, 106
IF (DMY(2)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%II(3) /= 25) print*, 107
IF (DMY(2)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0(3)%II(3) /= 26) print*, 108

IF (DMY(2)%NODE3(3)%NODE2(3)%II(3) /= 27) print*, 109
IF (DMY(2)%NODE3(3)%NODE2(3)%NODE0(4)%II(3) /= 28) print*, 110
IF (DMY(2)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%II(3) /= 29) print*, 111
IF (DMY(2)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0(4)%NODE0(4)%II(3) /= 299) print*, 112

IF (DMY(2)%NODE6(3)%II(3)  /= 121) print*, 913
IF (DMY(2)%NODE6(3)%NODE3(3)%II(3)  /= 122) print*, 914
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%II(3)  /= 123) print*, 915
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%NODE1(3)%II(3)  /= 124) print*, 916
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2(3)%II(3)  /= 125) print*, 917
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5(3)%II(3)  /= 126) print*, 918
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE2(3)%II(3)  /= 127) print*, 919
IF (DMY(2)%NODE6(3)%NODE3(3)%NODE5(3)%II(3)  /= 128) print*, 920

SELECT TYPE(X => DMY)
 TYPE IS (EXT)
 CLASS DEFAULT
  PRINT*, 112
END SELECT

SELECT TYPE(X => DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%NODE5)
 TYPE IS (EXT)
 CLASS DEFAULT
  PRINT*, 113
END SELECT

SELECT TYPE(X => DMY(2)%NODE6(3)%NODE3(3)%NODE5)
 TYPE IS (TY)
 CLASS DEFAULT
  PRINT*, 114
END SELECT

SELECT TYPE(X => DMY(2)%NODE6(3)%NODE3(3)%NODE1(3)%NODE2)
 TYPE IS (TY2)
 CLASS DEFAULT
  PRINT*, 116
END SELECT

SELECT TYPE(X => DMY(2)%NODE3(3)%NODE1(3)%NODE2(3)%NODE0(3)%NODE0)
 TYPE IS (TY2)
 CLASS DEFAULT
  PRINT*, 115
END SELECT

SELECT TYPE(X => DMY(2)%NODE3(3)%NODE2(3)%NODE0(4)%NODE0)
 TYPE IS (TY0)
  PRINT*,"PASS"
 CLASS DEFAULT
  PRINT*, 115
END SELECT
END SUBROUTINE
END