          REAL*4 CNDPFX(100),CNDPFR(100),CNDNOT(100)
          REAL*4 CNDNFR(100),CNDMFX(100),CNDMFR(100)
          DATA CNDPFX/100*0.2/
          DATA CNDNFR/100*0.5/
          DATA CNDPFR/100*0.2/
          DATA CNDMFX/100*0.2/
          DATA CNDMFR/100*0.5/
          DATA CNDNOT/100*0.2/
          REAL*4 A(100),B(100),C(100)

          DO 10 I=1,100
            A(I) = SIN(CNDPFX(I))
   10     CONTINUE

          DO 20 I=1,100
            B(I)=CNDPFR(I)
            C(I)=SIN(CNDPFR(I))
   20     CONTINUE
          DO 21 I=1,25
            B(I) = COS(CNDPFR(I))
            A(I) = COS(CNDPFR(I))**2.0
   21     CONTINUE

          DO 30 I=1,100
            A(I) = CNDNFR(I)
   30     CONTINUE
          DO 31 I= 1,25
            B(I) = CNDNFR(I) + A(I)
            C(I) = SIN(B(I))
   31     CONTINUE
          DO 32 I = 26,50
            B(I) = CNDNFR(I)*CNDNFR(I)
            A(I) = C(I)*CNDNFR(I)
   32     CONTINUE
          DO 33 I= 51,75
            IF(I.LT.60) THEN
             IF(I.LT.70) THEN
               A(I) = CNDNFR(I)*3.0
             ENDIF
             ELSEIF(I.LT.70) THEN
               A(I) = CNDNFR(I)*3.0
             ENDIF
   33     CONTINUE

          DO 40 I = 1,100
            IF(I.GT.0) THEN
              A(I) = CNDMFX(I)
            ENDIF
            IF(I.GT.10) THEN
              B(I) = SIN(CNDMFX(I))
            ENDIF
            IF(I.GT.50) THEN
              C(I) = CNDMFX(I)*5.0
            ENDIF
   40     CONTINUE

          DO 50 I= 1,100
            IF(I.GT.50) THEN
              C(I) = SIN(CNDMFR(I))
              CNDMFR(I) = A(I)*2.0
              IF(I.GT.70) THEN
               CNDMFR(I) = A(I)*2.0+2.0
              ENDIF
              A(I) = A(I)*2.0
            ENDIF
   50     CONTINUE
          WRITE(6,991) A,B,C,CNDPFX,CNDNFR
          WRITE(6,992) CNDPFR,CNDMFX,CNDMFR,CNDNOT
991       FORMAT(1H ,100(F8.3,F8.3,F8.3,F8.3,F8.3,/))
992       FORMAT(1H ,100(        F8.3,   F8.3,   F8.3,   F8.3,/))
          STOP
          END
