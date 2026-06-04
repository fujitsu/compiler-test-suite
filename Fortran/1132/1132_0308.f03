!             CVCT6412            LEVEL=1        DATE=85.07.04
!
! 1. PROGRAM NAME : CVCT6412
! 2. PURPOSE      : IF(0) AND FIND MAX/MIN
! 3. RESULT       : IF(0) BRANCH
! 4. ENVIRONMENT  : OCL OPTION
! 5. HISTORY      : 1985-06-24
!
PROGRAM CV6412
  type st1
     REAL   EA(256),EB(256),EC(256),EMA/0/,EMB/0/,EMC/0/
     LOGICAL LA(256),LB(256),LC(256)
  end type st1
  type(st1) :: str
  !
  DO  I=256,1,-1
     str%EA(I)=0.5
     IF(I.LT.4) str%EA(I)=100+I
     str%EB(I)=-1.
     IF(I.GT.60.AND.I.LE.63) str%EB(I)=-250+I
     str%EC(I)=1.
     IF(I.GT.253) str%EC(I)=9999.
     str%LA(I)=MOD(I-1,3).EQ.1
     str%LB(I)=MOD(I,3).EQ.1
     str%LC(I)=MOD(I+1,3).EQ.1
10   CONTINUE
  enddo
  !
!ocl loop_nofusion
  DO  I=256,1,-1

     IF(str%LA(I)) THEN
        IF(str%EMA.LT.str%EA(I)) THEN
           str%EMA=str%EA(I)
           JA=I+1
        ENDIF
     ENDIF

     IF(.NOT.str%LB(I)) THEN
        str%EA(I)=str%EA(I)*2
     ELSE
        IF(str%EMB.GT.str%EB(I)) str%EMB=str%EB(I)
        str%EA(I)=str%EA(I)+2
     ENDIF

     IF(str%LC(I)) THEN
        EDIF=str%EMC-str%EC(I)
        IF(EDIF) 21,22,22
21      str%EMC=str%EC(I)
22      CONTINUE
     ENDIF
20   CONTINUE
  enddo
  WRITE(6,1) str%EA,str%EB,str%EC
  WRITE(6,1) str%EMA,str%EMB,str%EMC
  WRITE(6,*) JA
  1 format(10f9.3)
END PROGRAM CV6412
