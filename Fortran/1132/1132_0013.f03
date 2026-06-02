!             CVCT2403            LEVEL=3        DATE=83.08.04
!
! 1. PROGRAM NAME  : CVCT2403
! 2. PURPOSE       : NEVER EXECUTED BLOCK, BUT IP EXISTS
! 3. RESULT        :
! 4. ENVIRONMENT   : LANGLVL(66/77)
! 5. HISTORY       : 1983-08-04
!
PROGRAM  CV2403
  !
  type TAG
     REAL*8   DV1(3)/3*0./,DV2(3,3)
  end type TAG
  type(TAG) st1
  INTEGER  IS1
  ! u2 add
  st1%DV2 = 0
  !
  IND=1
100 READ(5,*,END=999)  st1%DV1(IND)
  !
  ! INPUT DATA   :  0,-1,2
  !
  IS1 = 1
1 DO I=1,3
     st1%DV2(I,IND)=st1%DV1(I)
     IF (st1%DV1(I)*IS1) 10,11,2
2    IS1=0
     GOTO 1
11   st1%DV2(I,IND)=-st1%DV2(I,IND)
10   continue
  END DO
  IF (st1%DV1(IND).EQ.-100.0) GOTO 1
  !
  WRITE(6,*) st1%DV1,st1%DV2
  !
  IND=IND+1
  GOTO 100
  !
  DO I=1,10
20   st1%DV1(I)=I
  END DO
  !
  WRITE(6,*) st1%DV1
  !
  STOP
  !
30 I=I-1
  IF (st1%DV1(I)) 30,999,999
  !
999 STOP
END PROGRAM CV2403
