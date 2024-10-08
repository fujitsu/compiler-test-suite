MODULE MOD1
TYPE NODE
INTEGER,ALLOCATABLE :: VALUE(:)
TYPE (NODE), ALLOCATABLE :: NEXT_NODE(:)
TYPE (NODE), ALLOCATABLE :: PREV_NODE(:)
  
CONTAINS
PROCEDURE :: WFORM
PROCEDURE :: RFORM
GENERIC :: WRITE(FORMATTED) => WFORM
GENERIC :: READ(FORMATTED)  => RFORM
END TYPE

TYPE TY
TYPE(NODE),ALLOCATABLE :: OBJ(:)
TYPE(NODE),ALLOCATABLE :: OBJ2(:)
END TYPE

TYPE(TY)::BASE

CONTAINS
SUBROUTINE WFORM (DTV, UNIT, IOTYPE, VLIST, IOSTAT, IOMSG)
CLASS(NODE), INTENT(IN)     :: DTV
INTEGER, INTENT(IN) :: UNIT
CHARACTER(*), INTENT(IN)    :: IOTYPE
INTEGER, INTENT(IN)         :: VLIST(:)
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

IF (ALLOCATED(DTV%VALUE))THEN
WRITE(UNIT, *, IOSTAT = IOSTAT, IOMSG = IOMSG) DTV%VALUE
ENDIF

IF(ALLOCATED(DTV%NEXT_NODE))THEN
 WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF

IF(ALLOCATED(DTV%PREV_NODE))THEN
 WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%PREV_NODE
ENDIF
END SUBROUTINE

SUBROUTINE RFORM (DTV, UNIT, IOTYPE, VLIST, IOSTAT, IOMSG)
CLASS(NODE), INTENT(INOUT)  :: DTV
INTEGER, INTENT(IN) :: UNIT
CHARACTER(*), INTENT(IN)    :: IOTYPE
INTEGER, INTENT(IN)         :: VLIST(:)
INTEGER, INTENT(OUT)        :: IOSTAT
CHARACTER(*), INTENT(INOUT) :: IOMSG

IF (ALLOCATED(DTV%VALUE))THEN
READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%VALUE
ENDIF

IF(ALLOCATED(DTV%NEXT_NODE))THEN
 READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%NEXT_NODE
ENDIF

IF(ALLOCATED(DTV%PREV_NODE))THEN
 READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%PREV_NODE
ENDIF
END SUBROUTINE
END MODULE

PROGRAM MAIN
USE MOD1
ALLOCATE(BASE%OBJ(2))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2)%VALUE(2))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(3))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%VALUE(3))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(4))
ALLOCATE(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE(4))

BASE%OBJ(1)%NEXT_NODE(2)%VALUE = 10
BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 11
BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 12

ALLOCATE(BASE%OBJ(1)%PREV_NODE(2))
ALLOCATE(BASE%OBJ(1)%PREV_NODE(2)%VALUE(2))
ALLOCATE(BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(3))
ALLOCATE(BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE(3))
ALLOCATE(BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(4))
ALLOCATE(BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE(4))

BASE%OBJ(1)%PREV_NODE(2)%VALUE = 14
BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 15
BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 16

ALLOCATE(BASE%OBJ2(2))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3)%VALUE(3))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(4))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%VALUE(4))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(5))
ALLOCATE(BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE(5))

BASE%OBJ2(2)%NEXT_NODE(3)%VALUE = 21
BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 22
BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 23

ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2))
ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2)%VALUE(2))
ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(3))
ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE(3))
ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(4))
ALLOCATE(BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE(4))

BASE%OBJ2(1)%PREV_NODE(2)%VALUE = 24
BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 25
BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 26

OPEN(UNIT=71, FILE='fort.90', FORM='FORMATTED')
WRITE(UNIT=71,*) BASE%OBJ2
CLOSE(UNIT=71)

OPEN(UNIT=77, FILE='fort.90', FORM='FORMATTED')
READ(UNIT=77,*) BASE%OBJ
CLOSE(UNIT=77, STATUS='DELETE')

BASE%OBJ2(2)%NEXT_NODE(3)%VALUE = 31
BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%VALUE = 32
BASE%OBJ2(2)%NEXT_NODE(3)%PREV_NODE(3)%NEXT_NODE(3)%VALUE = 33

BASE%OBJ2(1)%PREV_NODE(2)%VALUE = 34
BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE = 35
BASE%OBJ2(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE = 36

if (ANY(BASE%OBJ(1)%NEXT_NODE(2)%VALUE /= 24)) print*, 101
if (ANY(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%VALUE /= 25)) print*, 102, BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%VALUE
if (ANY(BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE /= 26)) print*, 103, BASE%OBJ(1)%NEXT_NODE(2)%PREV_NODE(2)%NEXT_NODE(2)%VALUE

if (ANY(BASE%OBJ(1)%PREV_NODE(2)%VALUE /= 21)) print*, 104,BASE%OBJ(1)%PREV_NODE(2)%VALUE
if (BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE(2) /= 22) print*, 105 ,BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%VALUE
if (BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE(3) /= 23) print*, 106, BASE%OBJ(1)%PREV_NODE(2)%NEXT_NODE(2)%PREV_NODE(2)%VALUE
print*,"PASS"
END
