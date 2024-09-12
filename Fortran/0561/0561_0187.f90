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
IF(SIZE(V_LIST)/=0) THEN
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) V_LIST(1),V_LIST(2),DTV%A+1,IOTYPE
      ELSE
        WRITE(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A+1
      END IF
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
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A
      ELSE
        READ(UNIT,*,IOSTAT=IOSTAT,IOMSG=IOMSG) DTV%A
     END IF
     DTV%A=DTV%A+1
END SUBROUTINE SUB1

END MODULE M

PROGRAM MAIN

USE M
TYPE(T),POINTER::OBJW(:),OBJR(:)
INTEGER::G,F,Y,S,K,J,I,R
TYPE(T),TARGET::OBJ11(2),OBJ22(2)
OBJW=>OBJ11
OBJR=>OBJ22
OBJW(1)%A=4
OBJW(2)%A=4


 OPEN (UNIT=71, FILE='fort.76', FORM='FORMATTED')
WRITE(UNIT=71,*) ((((((((OBJW,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=71)


 OPEN (UNIT=77, FILE='fort.76', FORM='FORMATTED')
READ(UNIT=77,*) ((((((((OBJR,I=1,2),J=1,2),K=1,2),S=1,2),R=1,2),Y=1,2),F=1,2),G=1,2)
     CLOSE (UNIT=77,status='delete')
IF(  OBJR(1)%A .EQ. 6)THEN
 PRINT*,'PASS'
ELSE
 PRINT*,'ERROR'
END IF

END PROGRAM
