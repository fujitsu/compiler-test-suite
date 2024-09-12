MODULE M
  TYPE T
      INTEGER::A=4
     CONTAINS 
        PROCEDURE::SUB
        PROCEDURE::SUB1
        GENERIC::WRITE(FORMATTED)=>SUB
        GENERIC::READ(FORMATTED)=>SUB1
END TYPE T
CHARACTER(9) :: CH
  INTEGER :: VV
 


CONTAINS
SUBROUTINE SUB (DTV, UNIT, IOTYPE, V_LIST, IOSTAT,IOMSG)
    CLASS(T), INTENT(IN)            :: DTV
   INTEGER, INTENT(IN)            :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER,DIMENSION(:,:), INTENT(IN)             :: V_LIST(:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
    WRITE (UNIT=UNIT,*, IOSTAT=IOSTAT, IOMSG=IOMSG) DTV%A+1,IOTYPE,V_LIST
END SUBROUTINE SUB

SUBROUTINE SUB1(DTV, UNIT, IOTYPE, V_LIST, IOSTAT, IOMSG)
    CLASS(T), INTENT(INOUT)            :: DTV
    INTEGER, INTENT(IN)             :: UNIT
    CHARACTER(LEN=*), INTENT(IN)    :: IOTYPE
    INTEGER, INTENT(IN)             :: V_LIST (:)
    INTEGER, INTENT(OUT)            :: IOSTAT
    CHARACTER(LEN=*), INTENT(INOUT) :: IOMSG
CH=IOTYPE
          IF(SIZE(V_LIST)/=0) THEN
         VV=V_LIST(1)
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A,CH
      ELSE
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A,CH
     END IF
     DTV%A=DTV%A+1
END SUBROUTINE SUB1

END MODULE M

PROGRAM MAIN

USE M
TYPE(T)::OBJW(5),OBJR(5)
INTEGER::G,F,Y,S,K,J,I,R
OBJW%A=4


 OPEN (UNIT=71, FILE='fort.79', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW(I),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)


 OPEN (UNIT=77, FILE='fort.79', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((OBJR(I),I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')

IF( OBJR(1)%A.EQ. 6)THEN
 PRINT*,'PASS'
ELSE
 PRINT*,'ERROR'
END IF

END PROGRAM
