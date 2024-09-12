MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
  
CONTAINS
PROCEDURE :: WFORM
PROCEDURE :: RFORM
GENERIC :: WRITE(UNFORMATTED) => WFORM
GENERIC :: READ(UNFORMATTED)  => RFORM
END TYPE

TYPE(NODE), ALLOCATABLE :: OBJ1
TYPE(NODE), ALLOCATABLE :: OBJ2

CONTAINS
SUBROUTINE WFORM (DTV, UNIT, IOSTAT, IOMSG)
CLASS(NODE), INTENT(IN)     :: DTV
INTEGER, INTENT(IN) :: UNIT
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

IF (ALLOCATED(DTV%VALUE))THEN
WRITE(UNIT, IOSTAT = IOSTAT, IOMSG = IOMSG) DTV%VALUE
END IF

IF(ALLOCATED(DTV%NEXT_NODE))then
 WRITE(UNIT, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%NEXT_NODE
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
END SUBROUTINE
END MODULE

PROGRAM MAIN
USE MOD1

ALLOCATE(OBJ1)
ALLOCATE(OBJ1%NEXT_NODE(3))
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(3))
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2))
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(3)%NEXT_NODE(4))
ALLOCATE(OBJ1%NEXT_NODE(2)%NEXT_NODE(5))
ALLOCATE(OBJ1%NEXT_NODE(2)%NEXT_NODE(2)%NEXT_NODE(5))

ALLOCATE(OBJ1%VALUE)
ALLOCATE(OBJ1%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ1%NEXT_NODE(2)%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)

ALLOCATE(OBJ2)
ALLOCATE(OBJ2%NEXT_NODE(3))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(3))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(3)%NEXT_NODE(4))
ALLOCATE(OBJ2%NEXT_NODE(2)%NEXT_NODE(5))
ALLOCATE(OBJ2%NEXT_NODE(2)%NEXT_NODE(2)%NEXT_NODE(5))

ALLOCATE(OBJ2%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(2)%NEXT_NODE(3)%VALUE)
ALLOCATE(OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE)

OBJ2%VALUE = 21
OBJ2%NEXT_NODE(2)%VALUE = 22
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 23
OBJ2%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 24
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 25

OPEN(71, FILE='fort.90', FORM='UNFORMATTED')
WRITE(71) OBJ2
CLOSE(71)

OPEN(77, FILE='fort.90', FORM='UNFORMATTED')
READ(77) OBJ1
CLOSE(77, STATUS='DELETE')

OBJ2%VALUE = 31
OBJ2%NEXT_NODE(2)%VALUE = 32
OBJ2%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 33
OBJ2%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 34
OBJ2%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE = 35

if (OBJ1%VALUE /= 21) print*, 101
if (OBJ1%NEXT_NODE(2)%VALUE /= 22) print*, 102
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%VALUE /= 23) print*, 103
if (OBJ1%NEXT_NODE(2)%NEXT_NODE(3)%VALUE /= 24) print*, 104
if (OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE(2)%VALUE /= 25) print*, 105

if (SIZE(OBJ1%NEXT_NODE) /= 3) print*, 201
if (SIZE(OBJ1%NEXT_NODE(1)%NEXT_NODE) /= 3) print*, 202
if (SIZE(OBJ1%NEXT_NODE(1)%NEXT_NODE(1)%NEXT_NODE) /= 2) print*, 203
if (SIZE(OBJ1%NEXT_NODE(1)%NEXT_NODE(2)%NEXT_NODE) /= 3) print*, 204
if (SIZE(OBJ1%NEXT_NODE(1)%NEXT_NODE(3)%NEXT_NODE) /= 4) print*, 205
if (SIZE(OBJ1%NEXT_NODE(2)%NEXT_NODE) /= 5) print*, 206
if (SIZE(OBJ1%NEXT_NODE(2)%NEXT_NODE(2)%NEXT_NODE) /= 5) print*, 207

print*,"PASS"
END