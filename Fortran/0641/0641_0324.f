      PROGRAM MAIN
       REAL EA(256), EB(256), EC(256), EMA, EMB, EMC
       LOGICAL LA(256), LB(256), LC(256)
       INTEGER II1
       REAL EMB1
       EMC = 0.
       EMB = 0.
       EMA = 0.

C$OMP PARALLEL SHARED (EA,EB,EC,LA,LB,LC,EMA,JA,EMC,EMB) PRIVATE (I,II1,
C$OMP& EMB1)
C$OMP DO 
       DO I=256,1,-1
        EA(I) = 0.5
        IF (I .LT. 4) THEN
         EA(I) = I + 100
        END IF
        EB(I) = -1.
        IF (I .GT. 60 .AND. I .LE. 63) THEN
         EB(I) = I - 250
        END IF
        EC(I) = 1.
        IF (I .GT. 253) THEN
         EC(I) = 9999.
        END IF
        LA(I) = MOD (I - 1, 3) .EQ. 1
        LB(I) = MOD (I, 3) .EQ. 1
        LC(I) = MOD (I + 1, 3) .EQ. 1
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

                                                     
C$OMP DO 
       DO II1=0,1
        GO TO (6), II1
        DO I=256,1,-1
         IF (LA(I)) THEN
          IF (EMA .LT. EA(I)) THEN
           EMA = EA(I)
           JA = I + 1
          END IF
         END IF
        END DO
C$OMP FLUSH
        GO TO 7

                                                     
    6   DO I=256,1,-1
         IF (LC(I)) THEN
          IF (EMC .LT. EC(I)) THEN
           EMC = EC(I)
          END IF
         END IF
        END DO
C$OMP FLUSH
    7   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
       EMB1 = EMB

                                                     
C$OMP DO 
       DO I=256,1,-1
        IF (.NOT.LB(I)) THEN
         EA(I) = EA(I) * 2
        ELSE
         EMB1 = MIN (EMB1, EB(I))
         EA(I) = 2 + EA(I)
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II2)
       EMB = MIN (EMB, EMB1)
C$OMP END CRITICAL (II2)
C$OMP END PARALLEL 
       WRITE (6, *) EA, EB, EC
       WRITE (6, *) EMA, EMB, EMC, JA
      END
