MODULE MOD1
TYPE NODE
INTEGER :: VALUE = 9
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
  
CONTAINS
PROCEDURE :: WFORM
PROCEDURE :: RFORM
GENERIC :: WRITE(FORMATTED) => WFORM
GENERIC :: READ(FORMATTED)  => RFORM
END TYPE

TYPE(NODE),ALLOCATABLE :: OBJ1(:)
TYPE(NODE),ALLOCATABLE :: OBJ2(:)

CONTAINS
SUBROUTINE WFORM (DTV, UNIT, IOTYPE, VLIST, IOSTAT, IOMSG)
CLASS(NODE), INTENT(IN)     :: DTV
INTEGER, INTENT(IN) :: UNIT
CHARACTER(*), INTENT(IN)    :: IOTYPE
INTEGER, INTENT(IN)         :: VLIST(:)
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

WRITE(UNIT, *, IOSTAT = IOSTAT, IOMSG = IOMSG) DTV%VALUE

IF(ALLOCATED(DTV%NEXT_NODE))then
 WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF
END SUBROUTINE

SUBROUTINE RFORM (DTV, UNIT, IOTYPE, VLIST, IOSTAT, IOMSG)
CLASS(NODE), INTENT(INOUT)  :: DTV
INTEGER, INTENT(IN) :: UNIT
CHARACTER(*), INTENT(IN)    :: IOTYPE
INTEGER, INTENT(IN)         :: VLIST(:)
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%VALUE

IF(ALLOCATED(DTV%NEXT_NODE))then
 READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF
END SUBROUTINE
END MODULE

PROGRAM MAIN
USE MOD1

ALLOCATE(OBJ1(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ1(2)%NEXT_NODE(3)%NEXT_NODE(3))

ALLOCATE(OBJ1(3)%NEXT_NODE(3))
ALLOCATE(OBJ1(3)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ1(3)%NEXT_NODE(3)%NEXT_NODE(3))

OBJ1(2)%VALUE = 11
OBJ1(3)%VALUE = 12
OBJ1(2)%NEXT_NODE(1)%VALUE = 13
OBJ1(2)%NEXT_NODE(3)%VALUE = 14
OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(2)%VALUE = 15
OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 16
OBJ1(3)%NEXT_NODE(3)%NEXT_NODE(2)%VALUE = 17
OBJ1(3)%NEXT_NODE(3)%NEXT_NODE(3)%VALUE = 18

ALLOCATE(OBJ2(3))
ALLOCATE(OBJ2(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(2)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(2)%NEXT_NODE(3)%NEXT_NODE(3))

ALLOCATE(OBJ2(3)%NEXT_NODE(3))
ALLOCATE(OBJ2(3)%NEXT_NODE(2)%NEXT_NODE(3))
ALLOCATE(OBJ2(3)%NEXT_NODE(3)%NEXT_NODE(3))

OBJ2(2)%VALUE = 21
OBJ2(3)%VALUE = 22
OBJ2(2)%NEXT_NODE(1)%VALUE = 23
OBJ2(2)%NEXT_NODE(3)%VALUE = 24
OBJ2(2)%NEXT_NODE(2)%NEXT_NODE(2)%VALUE = 25
OBJ2(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 26
OBJ2(3)%NEXT_NODE(3)%NEXT_NODE(2)%VALUE = 27
OBJ2(3)%NEXT_NODE(3)%NEXT_NODE(3)%VALUE = 28

OPEN(UNIT=71, FILE='fort.90', FORM='FORMATTED')
WRITE(UNIT=71,*) OBJ2(2:3)
CLOSE(UNIT=71)

OPEN(UNIT=77, FILE='fort.90', FORM='FORMATTED')
READ(UNIT=77,*) OBJ1
CLOSE(UNIT=77, STATUS='DELETE')

OBJ2(2)%VALUE = 31
OBJ2(3)%VALUE = 32
OBJ2(2)%NEXT_NODE(1)%VALUE = 33
OBJ2(2)%NEXT_NODE(3)%VALUE = 34
OBJ2(2)%NEXT_NODE(2)%NEXT_NODE(2)%VALUE = 35
OBJ2(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE = 36
OBJ2(3)%NEXT_NODE(3)%NEXT_NODE(2)%VALUE = 37
OBJ2(3)%NEXT_NODE(3)%NEXT_NODE(3)%VALUE = 38

if (OBJ1(1)%VALUE /= 21) print*, 101, OBJ1(1)%VALUE
if (OBJ1(2)%VALUE /= 23) print*, 102, OBJ1(2)%VALUE
if (OBJ1(2)%NEXT_NODE(1)%VALUE /= 9) print*, 103
if (OBJ1(2)%NEXT_NODE(3)%VALUE /= 9) print*, 104
if (OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(2)%VALUE /= 26) print*, 105
if (OBJ1(2)%NEXT_NODE(2)%NEXT_NODE(3)%VALUE /= 24) print*, 106
if (OBJ1(3)%NEXT_NODE(3)%NEXT_NODE(2)%VALUE /= 28) print*, 107
if (OBJ1(3)%NEXT_NODE(3)%NEXT_NODE(3)%VALUE /= 18) print*, 108
print*,"PASS"
END
