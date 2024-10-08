MODULE M
  TYPE T
      INTEGER::A
     CONTAINS 
        PROCEDURE::SUB
        PROCEDURE::SUB1
        GENERIC::WRITE(FORMATTED)=>SUB
        GENERIC::READ(FORMATTED)=>SUB1
END TYPE T
    CHARACTER(9) :: CH
    INTEGER :: VV
    INTEGER,ALLOCATABLE ::ARR(:)

CONTAINS
SUBROUTINE SUB (DTV, UNIT, IOTYPE, V_LIST, IOSTAT,IOMSG)
    CLASS(T), INTENT(IN)            :: DTV
    INTEGER, INTENT(IN)            :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
    WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A+1,IOTYPE,V_LIST
END SUBROUTINE SUB

SUBROUTINE SUB1 (DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
    ALLOCATE(ARR,SOURCE=V_LIST)
    CH=IOTYPE
    READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A,CH,VV
    DTV%A=DTV%A+1
END SUBROUTINE SUB1

END MODULE M

PROGRAM MAIN

USE M
INTEGER::C=7,D=9
TYPE(T)::OBJR

 OPEN (UNIT=71, FILE='fort.52', FORM='FORMATTED')
     WRITE(UNIT=71,FMT="(I,DT'LINKLIST'(10),I)")C,T(2),D
     CLOSE (UNIT=71)

 OPEN (UNIT=77, FILE='fort.52', FORM='FORMATTED')
   READ (UNIT=77,FMT="(I,DT,I)")C,OBJR,D
     CLOSE (UNIT=77,status='delete')

IF( OBJR%A.EQ. 4)THEN
 PRINT*,'PASS'
ELSE
 PRINT*,'ERROR'
END IF

END PROGRAM
