module mm
  type st1
     REAL*8     QV1(10)
     REAL*8     DV1(10),DV2(10)
     REAL*4     RV1(10),RV2(10),RS01,RS02,RS03
     LOGICAL*4  LV1(10)
     INTEGER*4  LST(10)
  end type st1
  type(st1) :: str
end module mm

!             CVCT6214            LEVEL=3        DATE=83.08.08
PROGRAM  CV6214
  !  1. PROGRAM NAME  : CVCT6214
  !  2. PURPOSE       : OPERATION SELECTION
  !  3. ENVIRONMENT   : MASK,LIST,COMP/EXP
  !  4. RESULTS       :
  !  5. HISTORY       : 1983.04.19
  !
  !
  CALL INIT(1)
  CALL MASK
  CALL INIT(2)
  !
  !
  STOP
END PROGRAM CV6214
!
!
SUBROUTINE  INIT(N)
  use mm
  !
  IF (N.NE.1) THEN
     WRITE(6,*)  ' **** CVCT6214 **** NO.',N
     WRITE(6,*)  'str%DV1= ',str%DV1
     WRITE(6,*)  'str%DV2= ',str%DV2
     WRITE(6,*)  'str%RV1= ',str%RV1
     WRITE(6,*)  'str%RV2= ',str%RV2
     WRITE(6,*)  'str%LV1= ',str%LV1
     WRITE(6,*)  'str%RS01= ',str%RS01
     WRITE(6,*)  'str%RS02= ',str%RS02
     WRITE(6,*)  'str%RS03= ',str%RS03
  END IF
  !
  DO  I=1,10
     str%LST(I)=I
     str%LV1(I)=.FALSE.
     str%RV1(I)=I-4
     str%RV2(I)=100
     str%DV1(I)=8-I
     str%DV2(I)=100
10   str%QV1(I)=8-I
  enddo
  !
  str%RS02=0
  str%RS03=0
  RETURN
END SUBROUTINE INIT

!
SUBROUTINE MASK
  use mm
  !
  LOGICAL*4  LS
  INTEGER*4  IS
  !

  IS=9
  !
  !ocl novrec
  DO  I=1,10
     str%RS01=0
     LS= str%DV1(I).GE.str%RV1(I)

     IF (LS) THEN
        str%RV2(str%LST(I))=str%DV1(I)+str%RV1(I)
        str%RS02= MAX(str%DV1(I),str%RS02)
        IS= 1
        str%LV1(str%LST(I))= LS.AND.str%RV2(I).GT.str%DV1(str%LST(I))
     END IF
     IF (.NOT.LS) THEN
        str%RV2(I)=I*2.0
        str%LV1(I)=.NOT.str%LV1(I).AND.str%DV1(I).EQ.str%RV1(I)
        IF (str%LV1(I).AND..NOT.LS) THEN
           str%LV1(str%LST(I))=.NOT.str%LV1(I).AND.str%QV1(I).EQ.str%RV1(I)
           IS = 2
           str%DV1(I)=str%RV2(I)*4+IS
        ELSE
           IS = 3
        END IF
        str%RV2(I)=str%RV2(I)*3.
        str%RS01=str%QV1(I)*str%RV1(I)
        str%RS03=str%RV2(str%LST(I))+str%RS03+REAL(str%DV1(I))+str%RV1(I)
        str%RV2(str%LST(I))=str%RV2(I)+str%RS01
     ENDIF
     str%DV2(I)=str%RS01
10   CONTINUE
  enddo
  RETURN
END SUBROUTINE MASK
