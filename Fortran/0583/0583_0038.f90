MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
TYPE (NODE), ALLOCATABLE :: PREV_NODE(:)

CONTAINS
PROCEDURE :: WFORM
PROCEDURE :: RFORM
GENERIC :: WRITE(UNFORMATTED) => WFORM
GENERIC :: READ(UNFORMATTED)  => RFORM
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ
TYPE(NODE),ALLOCATABLE :: OBJ2

CONTAINS
SUBROUTINE WFORM (DTV, UNIT, IOSTAT, IOMSG)
CLASS(NODE), INTENT(IN)     :: DTV
INTEGER, INTENT(IN) :: UNIT
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

IF (ALLOCATED(DTV%VALUE))THEN
WRITE(UNIT, IOSTAT = IOSTAT, IOMSG = IOMSG) DTV%VALUE
ENDIF

IF(ALLOCATED(DTV%NEXT_NODE))then
 WRITE(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF

IF(ALLOCATED(DTV%PREV_NODE))then
 WRITE(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%PREV_NODE
ENDIF
END SUBROUTINE

SUBROUTINE RFORM (DTV, UNIT, IOSTAT, IOMSG)
CLASS(NODE), INTENT(INOUT)  :: DTV
INTEGER, INTENT(IN) :: UNIT
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

IF (ALLOCATED(DTV%VALUE))THEN
READ(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%VALUE
ENDIF

IF(ALLOCATED(DTV%NEXT_NODE))THEN
 READ(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF

IF(ALLOCATED(DTV%PREV_NODE))THEN
 READ(UNIT,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%PREV_NODE
ENDIF
END SUBROUTINE
END MODULE

PROGRAM MAIN
USE MOD1

ALLOCATE(OBJ)
ALLOCATE(OBJ%NEXT_NODE(2))
ALLOCATE(OBJ%NEXT_NODE(2)%PREV_NODE(3))
ALLOCATE(OBJ%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(4))

ALLOCATE(OBJ%VALUE)
ALLOCATE(OBJ%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ%NEXT_NODE(2)%PREV_NODE(2)%VALUE)
ALLOCATE(OBJ%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE)

ALLOCATE(OBJ%PREV_NODE(3))
ALLOCATE(OBJ%PREV_NODE(3)%NEXT_NODE(4))
ALLOCATE(OBJ%PREV_NODE(3)%NEXT_NODE(3)%PREV_NODE(5))

ALLOCATE(OBJ%PREV_NODE(3)%VALUE)
ALLOCATE(OBJ%PREV_NODE(3)%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ%PREV_NODE(3)%NEXT_NODE(3)%PREV_NODE(3)%VALUE)

OBJ%VALUE = 11
OBJ%NEXT_NODE(2)%VALUE = 12
OBJ%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 13
OBJ%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 14

OBJ%PREV_NODE(3)%VALUE = 15
OBJ%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 16
OBJ%PREV_NODE(3)%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 17

ALLOCATE(OBJ2)
ALLOCATE(OBJ2%NEXT_NODE(3))
ALLOCATE(OBJ2%NEXT_NODE(3)%PREV_NODE(4))
ALLOCATE(OBJ2%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(5))

ALLOCATE(OBJ2%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(3)%PREV_NODE(3)%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE)

ALLOCATE(OBJ2%PREV_NODE(2))
ALLOCATE(OBJ2%PREV_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(4))

ALLOCATE(OBJ2%PREV_NODE(2)%VALUE)
ALLOCATE(OBJ2%PREV_NODE(2)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ2%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE)

OBJ2%VALUE = 21
OBJ2%NEXT_NODE(3)%VALUE = 22
OBJ2%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 23
OBJ2%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 24

OBJ2%PREV_NODE(2)%VALUE = 25
OBJ2%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 26
OBJ2%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 27

OPEN(71, FILE='fort.90', FORM='UNFORMATTED')
WRITE(71) OBJ2
CLOSE(71)

OPEN(77, FILE='fort.90', FORM='UNFORMATTED')
READ(77) OBJ
CLOSE(77, STATUS='DELETE')

OBJ2%VALUE = 31
OBJ2%NEXT_NODE(3)%VALUE = 32
OBJ2%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 33
OBJ2%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 34

OBJ2%PREV_NODE(2)%VALUE = 35
OBJ2%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 36
OBJ2%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 37

if (OBJ%VALUE /= 21) print*, 101
if (OBJ%NEXT_NODE(2)%VALUE /= 22) print*, 102
if (OBJ%NEXT_NODE(2)%PREV_NODE(2)%VALUE /= 23) print*, 103
if (OBJ%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE /= 24) print*, 104

if (OBJ%PREV_NODE(3)%VALUE /= 25) print*, 105
if (OBJ%PREV_NODE(3)%NEXT_NODE(3)%VALUE /= 26) print*, 106
if (OBJ%PREV_NODE(3)%NEXT_NODE(3)%PREV_NODE(3)%VALUE /= 27) print*, 107

print*,"PASS"
END