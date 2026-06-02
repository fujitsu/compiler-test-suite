module mm
  type st1
     INTEGER*4  LV01(10),LV02(11)
     REAL*4     RV01(-9:10),RV02(10)
  end type st1
  type(st1) :: str
end module mm

!             CVCT6213            LEVEL=5        DATE=83.08.08
PROGRAM  CV6213
  !  1. PROGRAM NAME  : CVCT6213
  !  2. PURPOSE       : OPERATION SELECTION  (SCALAR PART EXISTS)
  !  3. ENVIRONMENT   : MASK,LIST,COMP/EXP
  !  4. RESULTS       :
  !  5. HISTORY       : 1983.04.07
  !
  use mm
  REAL*8     QS01/5.5/
  !      COMMON     //RV01,LV01
  !
  CALL  INIT(1)
  !
  !ocl novrec
  DO  I=1,10
     str%RV02(I)=I
     str%RV02(I)=I+str%RV02(I)
10   IF(I.NE.5)  str%RV01(str%LV01(I))=(str%RV02(I)/2.0+10.0)**3.0
  enddo
  !
  CALL  INIT(2)
  WRITE(6,*) str%RV02
  !
  DO  I=1,10
20   IF((0.LT.str%LV01(I)).AND.(str%LV01(I).LE.10)) &
          str%RV01(str%LV01(I))=SQRT(I/4.*I)*3 + QS01
  enddo
  !
  CALL  INIT(3)
  !
  DO  I=1,10
30   IF (str%LV01(I).LT.11) str%RV01(str%LV01(I))=str%LV01(I)/2.*3
  enddo
  !
  CALL INIT(4)
  !
  !ocl novrec
  DO  I=1,10
     RS=I*3.
     QS01=RS
     IF (I.NE.10) str%RV01(str%LV01(I)+1)=str%RV01(str%LV01(I)+1)*QS01
     QS01=QS01-1
40   IF (I.EQ.10) str%RV01(str%LV01(I)-9)=-str%RV01(str%LV01(I)-9)-RS+QS01
  enddo
  !
  CALL  INIT(5)
  !
  STOP
END PROGRAM CV6213
!
!
SUBROUTINE  INIT(N)
  use mm
  !      COMMON  //RV01,LV01
  !      EQUIVALENCE  (RV01(1),LV02),(LV02(11),LV01)
  !
  IF (N.NE.1) THEN
     WRITE(6,*)  ' **** CVCT6213 **** NO.',N
     WRITE(6,*)  'str%RV01= ',str%RV01
     WRITE(6,*)  'str%LV01= ',str%LV01
  END IF
  !
  IF (N.EQ.1) THEN
     DO  I=1,10
        str%LV01(I)=11-I
        str%RV01(I-10)=0
10      str%RV01(I)=0.
     enddo
     str%LV02(6)=16
  END IF
  !
  IF (N.EQ.2) THEN
     DO  I=1,10
        str%LV01(I)=(I-2)*2
20      str%RV01(I)=0.
     enddo
  END IF
  !
  IF (N.EQ.3) THEN
     DO  I=1,10
        str%LV01(I)= I*2
30      str%RV01(I)= I-3
     enddo
  END IF
  !
  IF (N.EQ.4) THEN
     DO  I=1,10
        str%LV01(I)= I
40      str%RV01(I)= I
     enddo
  END IF
  !
  RETURN
END SUBROUTINE INIT
