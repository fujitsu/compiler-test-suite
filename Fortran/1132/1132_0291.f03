module mm
  type st1
     REAL*4     RV01(-9:10),RV02(10),RV03(10)
     INTEGER*4  IV01(10),IV02(10),IRC1,ICODE,N
     LOGICAL*4  LV01(10)
  end type st1
  type(st1) :: str
  !      COMMON     //RV01,RV02,LV01,IV01,IV02,RV03,IRC1,ICODE
end module mm

!             CVCT6215            LEVEL=3        DATE=83.04.23
PROGRAM  CV6215
  !  1. PROGRAM NAME  : CVCT6215
  !  2. PURPOSE       : OPERATION SELECTION  (SIMPLE VARIABLE)
  !  3. ENVIRONMENT   : MASK,LIST,COMP/EXP
  !  4. RESULTS       :
  !  5. HISTORY       : 1983.04.23
  !
  use mm
  !      REAL*4     RV01(-9:10),RV02(10),RV03(10)
  REAL*8     QS01/5.5/
  !      INTEGER*4  IV01(10),IV02(10),IRC1,ICODE
  !      LOGICAL*4  LV01(10)
  !      COMMON     //RV01,RV02,LV01,IV01,IV02,RV03,IRC1,ICODE
  !
  CALL  INIT(1)
  !
  DO  I=1,10
     str%RV02(I)=I
     str%RV02(I)=I+str%RV02(I)
     IF(str%IRC1.NE.5)                         GOTO 14
     str%RV01(I-3)=str%RV02(I)**2
     str%LV01(I)=str%RV01(I).GT.str%RV01(I-3)
     IF (str%LV01(I))                        GOTO 12
     str%RV01(I)=str%RV01(I)/4.0
     str%ICODE=I*100+1
     str%RV02(I)=str%RV01(I)*3.5-str%RV01(I)+QS01
     str%IV02(I)=str%RV01(I)*2+4
     GOTO 11
14   str%ICODE=I*100+4
11   IF((0.LT.str%IV02(I)).AND.(str%IV02(I).LE.10)) &
           str%RV03(str%IV02(I))=SQRT(I/4.*I)*3 + QS01
     IF(str%IRC1.NE.5)  THEN
        str%ICODE=I*100+2
        GOTO 10
     END IF
12   str%ICODE=I*100+3
10   str%IV01(I)=str%ICODE
  enddo
  CALL INIT(2)
  !
  !
  STOP
END PROGRAM CV6215
!
!
SUBROUTINE  INIT(N)
  use mm
  !
  !
  IF (N.NE.1) THEN
     WRITE(6,*)  ' **** CVCT6215 **** NO.',N
     WRITE(6,*)  'str%RV01= ',str%RV01
     WRITE(6,*)  'str%RV02= ',str%RV02
     WRITE(6,*)  'str%LV01= ',str%LV01
     WRITE(6,*)  'str%IV01= ',str%IV01
     WRITE(6,*)  'str%IV02= ',str%IV02
  ELSE
     DO  I=-9,0
1       str%RV01(I)=3.
     enddo
  END IF
  !
  DO  I=1,10
     str%LV01(I)=.TRUE.
     str%RV01(I)=12+I
     str%IV02(I)=12+I
10   str%IV01(I)=0
  enddo
  str%ICODE=0
  str%IRC1 =5
  !
  RETURN
END SUBROUTINE INIT
