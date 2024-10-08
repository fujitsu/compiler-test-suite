MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE(:)
CHARACTER(LEN=:),ALLOCATABLE :: MSG
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ1
TYPE(NODE),ALLOCATABLE :: OBJ2
END MODULE

CALL SUB()

CONTAINS
SUBROUTINE SUB()
USE MOD1
ALLOCATE(OBJ1)

ALLOCATE(OBJ2)
ALLOCATE(OBJ2%VALUE(2))
ALLOCATE(CHARACTER(LEN=5)::OBJ2%MSG)
ALLOCATE(OBJ2%NEXT_NODE(2))
ALLOCATE(OBJ2%NEXT_NODE(1)%VALUE(3))
ALLOCATE(OBJ2%NEXT_NODE(2)%VALUE(4))
ALLOCATE(CHARACTER(LEN=6)::OBJ2%NEXT_NODE(1)%MSG)
ALLOCATE(CHARACTER(LEN=6)::OBJ2%NEXT_NODE(2)%MSG)
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(3))
ALLOCATE(OBJ2%NEXT_NODE(2)%NEXT_NODE(5))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%VALUE(5))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE(4))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%VALUE(3))
ALLOCATE(CHARACTER(LEN=4)::OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%MSG)
ALLOCATE(CHARACTER(LEN=4)::OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%MSG)
ALLOCATE(CHARACTER(LEN=4)::OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%MSG)

OBJ2%VALUE = 20
OBJ2%NEXT_NODE(1)%VALUE = 21
OBJ2%NEXT_NODE(1)%VALUE(2) = 22
OBJ2%NEXT_NODE(2)%VALUE = 23
OBJ2%NEXT_NODE(2)%VALUE(2) = 24
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%VALUE = 25
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 26
OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%VALUE = 27

OBJ2%MSG = "HELLO"
OBJ2%NEXT_NODE(1)%MSG = "WORLD"
OBJ2%NEXT_NODE(2)%MSG = "NIGHT"
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%MSG = "JAPA"
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%MSG = "INDI"
OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%MSG = "ANIH"

OBJ1 = OBJ2

OBJ2%MSG = "OLLEH"
OBJ2%NEXT_NODE(1)%MSG = "DLROW"
OBJ2%NEXT_NODE(2)%MSG = "THGIN"
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%MSG = "NAPAJ"
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%MSG = "AIDNI"
OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%MSG = "AEROK"

OBJ2%VALUE = 30
OBJ2%NEXT_NODE(1)%VALUE = 31
OBJ2%NEXT_NODE(1)%VALUE(2) = 32
OBJ2%NEXT_NODE(2)%VALUE = 33
OBJ2%NEXT_NODE(2)%VALUE(2) = 34
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%VALUE = 35
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 36
OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%VALUE = 37

if (OBJ1%VALUE(2) /= 20) print*, 101
if (OBJ1%NEXT_NODE(1)%VALUE(1) /= 21) print*, 102
if (OBJ1%NEXT_NODE(1)%VALUE(2) /= 22) print*, 103
if (OBJ1%NEXT_NODE(2)%VALUE(1) /= 23) print*, 104
if (OBJ1%NEXT_NODE(2)%VALUE(2) /= 24) print*, 105
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%VALUE(2) /= 25) print*, 106
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%VALUE(2) /= 26) print*, 107
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(3)%VALUE(2) /= 27) print*, 108

if (OBJ1%MSG /= "HELLO") print*, 201
if (OBJ1%NEXT_NODE(1)%MSG /= "WORLD") print*, 202
if (OBJ1%NEXT_NODE(2)%MSG /= "NIGHT") print*, 203
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%MSG /= "JAPA") print*, 204
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%MSG /= "INDI") print*, 205
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(3)%MSG /= "ANIH") print*, 206

if (SIZE(OBJ1%NEXT_NODE) /= 2) print*, 301
if (SIZE(OBJ1%NEXT_NODE(1)%NEXT_NODE) /= 3) print*, 301
if (SIZE(OBJ1%NEXT_NODE(2)%NEXT_NODE) /= 5) print*, 301
print*,"PASS"
END SUBROUTINE
END
