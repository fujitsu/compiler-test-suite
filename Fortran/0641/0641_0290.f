      PROGRAM MAIN
       REAL A(100), B(100), C(100)
       INTEGER IA(100), IB(100), IC(100)
       LOGICAL*4 LA(100), LB(100), LC(100), LD(100), LE(100), LF(100)
       INTEGER N
       PARAMETER (N = 100)
       INTEGER II7, II6, II5, II4, II3, II2, II1, J1, I1
       REAL S21, RR2, RR1
       S1 = 0.
       S2 = 0.
       DATA A/1,2,3,4,5,6,7,8,9,10,90*1/ 
       DATA B/-4,-3,-2,-1,0,1,2,3,4,5,90*3/ 
       DATA C/-4,-3,-2,-1,0,1,2,3,4,5,90*2/ 
       DATA IA/100*1/ 
       DATA IB/100*2/ 
       DATA IC/100*20/ 
       DATA LA/50*.TRUE.,50*.FALSE./ 
       DATA LB/50*.FALSE.,50*.FALSE./ 
       DATA LC/50*.TRUE.,50*.FALSE./ 
       DATA LD/50*.TRUE.,50*.FALSE./ 
       DATA LE/50*.TRUE.,50*.FALSE./ 
       DATA LF/50*.TRUE.,50*.FALSE./ 

       S1 = 0.
       S1 = 2.
       IM = 0
       DO I1=1,100
        IF (LA(I1)) THEN
         S1 = S1 + A(I1)
        END IF
       END DO
       DO I1=1,100

        IF (S2 .LE. B(I1)) THEN
        ELSE
         S2 = B(I1)
         IM = I1
        END IF
       END DO
       WRITE (6, *) ' S1 = ', S1
       WRITE (6, *) ' S2 = ', S2, ' IM = ', IM

       DO I1=1,100
        I = I1
        IF (LB(I1)) GO TO 21
       END DO
       I = 101
   21  WRITE (6, *) I


C$OMP PARALLEL SHARED (LB,A,B) PRIVATE (RR1,RR2,K,I1)
C$OMP DO 
       DO K=1,100
        IF (LB(K)) THEN
         DO I1=1,97,4
          RR1 = -I1
          RR1 = -1 - I1
          RR1 = -2 - I1
          RR1 = -3 - I1
         END DO
         A(K) = RR1
        ELSE
         DO I1=1,97,4
          RR2 = B(I1)
          RR2 = B(I1+1)
          RR2 = B(I1+2)
          RR2 = B(I1+3)
         END DO
         A(K) = RR2
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       J = 100

       DO I1=1,100
        IF (LA(I1)) THEN
         A(I1) = B(I1)
        ELSE
         IF (LB(I1)) THEN
          A(I1) = 2.
         ELSE
          IF (LC(I1)) THEN
           A(I1) = 3.
          ELSE
           IF (LD(I1)) THEN
            A(I1) = 4.
           ELSE
            IF (LE(I1)) THEN
             A(I1) = 6.
            ELSE
             IF (LF(I1)) THEN
              A(I1) = 7.
             ELSE
              IF (LD(I1)) THEN
               A(I1) = 5.
              END IF
             END IF
            END IF
           END IF
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) A



       DO I1=1,100
        IF (LA(I1)) THEN
                                                  
         II1 = MAX0 ((IC(I1) * IA(I1) - IB(I1) + IA(I1) * (-2) + 2) / 2
     X     , 0)
         II5 = (IC(I1) * IA(I1) - IB(I1) + IA(I1) * (-2) + 2) / 8
         II4 = IA(I1) * 2 + IB(I1) + II5 * 8
         DO J1=IA(I1)*2+IB(I1),IC(I1)*IA(I1)-6,8
          S1 = S1 + A(J1)
          S1 = S1 + A(J1+2)
          S1 = S1 + A(J1+4)
          S1 = S1 + A(J1+6)
         END DO
         DO J1=II4,IC(I1)*IA(I1),2
          S1 = S1 + A(J1)
         END DO
         J = II1 * 2 + IB(I1) + IA(I1) * 2
        ELSE
         II2 = IA(I1) * 3
         II3 = IC(5)
         II7 = (II3 - II2 + 3) / 12
         II6 = II2 + II7 * 12
C$OMP PARALLEL IF (II3 .GT. II2 + 1122) SHARED (II2,II3,J,B,S2) 
C$OMP& PRIVATE (K,S21)
         S21 = 0.
                                                  
C$OMP DO 
         DO K=II2,II3-9,12
          S21 = S21 + B(J)
          S21 = S21 + B(J)
          S21 = S21 + B(J)
          S21 = S21 + B(J)
         END DO
C$OMP END DO NOWAIT
C$OMP CRITICAL (II8)
         S2 = S2 + S21
C$OMP END CRITICAL (II8)
C$OMP END PARALLEL 
         DO K=II6,II3,3
          S2 = S2 + B(J)
         END DO
        END IF
       END DO
       WRITE (6, *) S1, S2
       STOP 
      END
