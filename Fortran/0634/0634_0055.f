          COMMON  A(250)
          WRITE(6,10)
   10     FORMAT('1',5X,'====== FORTRAN ====== ... G0000300'/)
          IP=0
          DO 15 I=1,250
          F=FLOAT(I)
          A(I)=F
   15     CONTINUE
          CALL  G30001(IP)
          CALL  G30002(IP)
          IF(IP.NE.0 )   GOTO 30
          WRITE(6,20)
   20     FORMAT(21X,'G0000300        0K'/)
   30     WRITE(6,40) IP
   40     FORMAT(6X,' IP=',I5,' END RUNUNIT ' )
          STOP
          END
      SUBROUTINE   G30001(IP)
      COMMON   A(250)
      DIMENSION    B(250), C(250)
          WRITE(1,*)  A
          REWIND  1
          READ(1,*)  B
          DO 10 I=1,250
          K=I
          IF( A(I).NE.B(I) )  GOTO  20
   10     CONTINUE
          WRITE(6,100)
  100 FORMAT(' ',' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  ' )
          RETURN
   20     WRITE(6,200)  K
  200 FORMAT(' ',' *********************   I=',I4,'TH IS ERROR' )
          IP=2
          RETURN
          END
      SUBROUTINE    G30002(IP)
      COMMON   A(250)
      DIMENSION   B(250),C(250)
    1 FORMAT(250F8.2)
          WRITE(10,1)  A
          BACKSPACE 10
          READ(10,1)   B
          WRITE(11,1)  A
          BACKSPACE 11
          READ(11,1)   C
          DO 10 I=1,250
          IF( A(I).NE.B(I) )  GO TO  20
          IF( A(I).NE.C(I) )  GO TO  30
   10     CONTINUE
          WRITE(6,100)
  100     FORMAT(' ',' %%%%%%%%%%%%%%%%%% ' )
          RETURN
   20     WRITE(6,120)  I,I
  120     FORMAT(' ',' A(',I4,').NE.B(',I4,')  %%%%%%%%')
          IP=IP+1
          RETURN
   30     WRITE(6,130)  I,I
  130     FORMAT(' ',' A(',I4,').NE.C(',I4,')  %%%%%%%%%')
          IP=IP+1
          RETURN
          END
