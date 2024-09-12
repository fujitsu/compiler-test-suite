          REAL*4 R1A(100)/100*1.0/,R1B(100)/100*2.0/
          REAL*4 R2A(10),R2B(10),A(100)/100*0.0/,B(100)/100*0.0/
          REAL*4 R3A(10),R3B(10),R3C(10)/10*0.0/
          INTEGER*4 N/5/
          LOGICAL*4 L1(100),L2(100)

          DO 10 I = 1,100
            L1(I) = R1A(I).GT.R1B(I)
            L2(I) = R1A(I).LE.R1B(I)
            IF(N.GT.4) THEN
              IF(L1(I)) THEN
                A(I) = R1A(I)
              ENDIF
            ELSE
              IF(L2(I)) THEN
                B(I) = R1B(I)
              ENDIF
            ENDIF
   10     CONTINUE

          DO 20 I = 1,10
            R2A(I) = FLOAT(I)
            R2B(I) = FLOAT(I+1)
            IF(N.LT.10) THEN
              B(I) = R2A(I)+FLOAT(N+1)
              A(I) = R2B(I)+FLOAT(N)+R2A(I)
              IF(L1(1))THEN
                B(I+50) = R2B(I)+2.0+FLOAT(N)
              ENDIF
            ENDIF
   20     CONTINUE

          DO 30 I=1,10
            R3A(I) = R2A(I)
            R3B(I) = R2A(I)
            R3C(I) = R2A(I)
            IF(N.EQ.5) THEN
              B(I+N) = R3A(I)
              B(I+N+10) = R3B(I)
              B(I+N+20)   = R3C(I)
              IF(L1(1)) THEN
                A(I+N) = R3B(I)
                A(I+N+10) = R3C(I)
                IF(.NOT.L2(N)) THEN
                 A(I+N+20) = R3B(I)
                ENDIF
              ENDIF
            ENDIF
   30     CONTINUE

          DO 40 I=1,100
            L1(I) = A(I).GT.B(I)
            L2(I) = A(I).NE.B(I)
            IF(N.LT.10) THEN
              B(I) =B(I)+A(I)
              IF(L1(I).AND.L2(I))THEN
                A(I) = A(I)+B(I)
              ENDIF
            ENDIF
   40     CONTINUE

          DO 50 I = 50,100,N
            L1(I) = R1A(I).GT.R1B(I)
            IF(L1(1)) THEN
              B(I)= R1A(I)+R1B(I)*R1B(I)
            ENDIF
   50     CONTINUE
          WRITE(6,*) R1A,R1B,R2A,R2B,R3A,R3B,R3C,L1,L2,
     *               A,B
          STOP
          END
