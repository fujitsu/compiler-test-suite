      PROGRAM MAIN
       REAL A(100), B(100), C(100), D(100), E(100), F(100), G(100)
       REAL P(100,100), Q(100,100), R(100,100)
       LOGICAL LA(100), LB(100), LC(100)
       DATA A/100*0./ 
       DATA B/100*0./ 
       DATA C/100*0./ 
       DATA D/100*0./ 
       DATA E/100*0./ 
       DATA LA/50*.TRUE.,50*.FALSE./ 
       DATA LB/50*.TRUE.,50*.FALSE./ 
       DATA LC/50*.TRUE.,50*.FALSE./ 
       INTEGER I1
       LOGICAL LL4, LL3, LL2, LL1

C$OMP PARALLEL SHARED (LA,A,P,LC,LB,R) PRIVATE (I1,LL1,J,LL2,LL3,LL4)
C$OMP DO 
       DO I1=1,100
        LL1 = LA(I1)
        IF (LL1) THEN
         A(I1) = 1.
         DO J=1,97,4
          P(I1,J) = I1 + J
          P(I1,J+1) = I1 + J + 1
          P(I1,J+2) = I1 + J + 2
          P(I1,J+3) = I1 + J + 3
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I1=1,100
        LL2 = LC(I1)
        IF (LL2) THEN
         LL3 = .NOT.LB(I1)
         IF (LL3) THEN
          DO J=1,97,4
           P(I1,J) = I1 + J
           P(I1,J+1) = I1 + J + 1
           P(I1,J+2) = I1 + J + 2
           P(I1,J+3) = I1 + J + 3
          END DO
         END IF
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER


C$OMP DO 
       DO I1=1,100
        LL4 = LA(I1)
        IF (LL4) THEN
         A(I1) = 1.
         DO J=1,97,4
          P(I1,J) = I1 + J
          P(I1,J+1) = I1 + J + 1
          P(I1,J+2) = I1 + J + 2
          P(I1,J+3) = I1 + J + 3
         END DO
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I1=1,100
        IF (.NOT.LA(I1)) THEN
         IF (LB(I1)) THEN
          GO TO 14
         END IF
         GO TO 15
        END IF

        IF (LC(I1)) THEN
         GO TO 14
        END IF
        GO TO 15
   14   DO J=1,97,4
         R(I1,J) = P(I1,J)
         R(I1,J+1) = P(I1,J+1)
         R(I1,J+2) = P(I1,J+2)
         R(I1,J+3) = P(I1,J+3)
        END DO
   15   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       I = 101

       WRITE (6, *) (A(I), I=1,10)
       WRITE (6, *) (R(I,1), I=1,10)
       STOP 
      END
