module mm
  type st1
     REAL*8     DV1(10),DV2(10)
     REAL*4     RV1(10),RV2(10)
     LOGICAL*4  LV1(10)
     INTEGER*4  LST(10)
  end type st1
  type(st1) :: str
end module mm

!             CVCT6212            LEVEL=7        DATE=83.08.08
PROGRAM  CV6212
  !  1. PROGRAM NAME  : CVCT6212
  !  2. PURPOSE       : OPERATION SELECTION
  !  3. ENVIRONMENT   : MASK,LIST,COMP/EXP
  !  4. RESULTS       :
  !  5. HISTORY       : 1983.04.19
  !
  !
  use mm
  CALL INIT()
  CALL MASK
  !
  WRITE(6,*)  'str%DV1= ',str%DV1
  WRITE(6,*)  'str%DV2= ',str%DV2
  WRITE(6,*)  'str%RV1= ',str%RV1
  WRITE(6,*)  'str%RV2= ',str%RV2
  WRITE(6,*)  'str%LV1= ',str%LV1
  !
  STOP
END PROGRAM CV6212
!
!
SUBROUTINE  INIT()
  use mm
  !
  DO  I=1,10
     str%LST(I)=I
     str%LV1(I)=.FALSE.
     str%RV1(I)=I-4
     str%RV2(I)=100
     str%DV1(I)=8-I
10   str%DV2(I)=100
  enddo
  !
  RETURN
END SUBROUTINE INIT
!
SUBROUTINE MASK
  use mm
  !
  REAL*4 S
  !      REAL*8     DV1(10),DV2(10)
  !      REAL*4     RV1(10),RV2(10)
        LOGICAL*4  LS
  !      INTEGER*4  LST(10)
  !
  !      COMMON     //DV1,DV2,RV1,RV2,LV1,LST
  IS=9
  !
!ocl novrec
  DO  I=1,10
     S=0
     LS= str%DV1(I).GE.str%RV1(I)

     IF (LS) THEN
        str%RV2(str%LST(I))=str%DV1(I)+str%RV1(I)
        str%LV1(str%LST(I))= LS.AND.str%RV2(I).GT.str%DV1(str%LST(I))
     END IF
     IF (.NOT.LS) THEN
        str%RV2(I)=I*2.0
        str%LV1(I)=.NOT.str%LV1(I).AND.str%DV1(I).EQ.str%RV1(I)
        str%LV1(str%LST(I))=.NOT.str%LV1(I).AND.str%DV1(I).EQ.str%RV1(I)
        str%DV1(I)=str%RV2(I)*4+IS
        S=str%DV1(I)*str%RV1(I)
        str%RV2(str%LST(I))=str%RV2(I)+S
     ENDIF
     str%DV2(I)=S
10   CONTINUE
  enddo
  RETURN
END SUBROUTINE MASK
