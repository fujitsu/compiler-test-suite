      INTEGER PL,RL
      CALL PLOTS (0.0)
      CALL PLOT (5.0,-1.1,-3)
      TH0=0.0
      TH30=30.0
      TH150=150.0
      TH360=360.0
      TH390=390.0
      TH2550=2550.0
      TH5430=5430.0
      THM180=-180.0
      THM360=-TH360
      CALL FACTOR (2.54)
      R0=0.0
      R02=0.2
      R2=2.0
      R3=3.0
      A=0.0866
      B=0.05
      DR=0.1
      PL=1
      RL=2
      DO 111 I=1,10
      M=PL
    1 CALL CIRCL (A,B,TH30,TH390,DR,DR,M)
      A=A+0.0866
      B=B+0.05
      DR=DR+0.1
      IF (M-1) 111,2,111
    2 M=RL
      GO TO 1
  111 CONTINUE
      CALL PLOT (3.0,-2.08,-3)
      C=0.17320
      D=0.1
      DO 222 I=1,8
      CALL CIRCL (C,D,TH30,TH150,R02,R02,2)
      R02=R02+0.2
      C=C+0.17320
      D=D+0.1
  222 CONTINUE
      CALL PLOT (1.45,5.8,-3)
      DO 333 I=1,8
      CALL CIRCL (C,D,TH0,THM180,R02,R02,3)
      C=C-0.17320
      D=D-0.1
      R02=R02-0.2
  333 CONTINUE
      CALL PLOT (0.18,-5.4,-3)
      C=0.17320
      D=0.1
      DO 444 I=1,6
      CALL CIRCL (C,D,TH150,TH30,R02,R02,2)
      C=C-0.17320
      R02=R02+0.2
  444 CONTINUE
      CALL PLOT (3.34,1.0,-3)
      CALL CIRCL (0.0,0.0,TH30,TH2550,0.0,1.4,3)
      CALL PLOT (1.0,-1.4,-3)
      CALL CIRCL (2.5980,1.5,TH390,TH0,3.0,0.0,2)
      CALL PLOT (2.36,3.23,-3)
      CALL CIRCL (0.0,0.0,THM360,0.0,0.0,2.0,1)
      CALL CIRCL (2.0,0.0,TH0,TH360,2.0,0.0,2)
      CALL PLOTE
      WRITE(6,10)
   10 FORMAT('1','====== FORTRAN ====== ... = TEST ='//21X,'===========
     *====================================='//6X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE PLOTE
      INTEGER C
      RETURN
      ENTRY   PLOTS(A)
      RETURN
      ENTRY PLOT(A,B,C)
      RETURN
      ENTRY FACTOR(A)
      RETURN
      ENTRY CIRCL(A,B,D,E,F,G,C)
      RETURN
      END
