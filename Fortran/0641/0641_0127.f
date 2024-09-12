      PROGRAM MAIN

       REAL R10(10,10), R11(10,10)
       REAL*8 D10(10,10)
       INTEGER I10(10,10), LIST(10)
       LOGICAL L10(10,10)
       data list/1,2,3,4,5,6,7,8,9,10/

       N = 10
       M = 10
       CALL INIT (N,M,L10,I10,R10,R11,D10,LIST)
       CALL SUB1 (N,M,L10,I10,R10,R11,D10,LIST)

       CALL SUB2 (N,M,L10,I10,R10,R11,D10,LIST)

       CALL SUB3 (N,M,L10,I10,R10,R11,D10,LIST)
       WRITE (6, *) ' L10 = ', L10
       WRITE (6, *) ' I10 = ', I10
       WRITE (6, *) ' R10 = ', R10
       WRITE (6, *) ' R11 = ', R11
       WRITE (6, *) ' D10 = ', D10
       STOP 
      END
    
      SUBROUTINE INIT ( N, M, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N,N)
       INTEGER I10(N,N), LIST(N)
       REAL R10(N,N), R11(N,N)
       REAL*8 D10(N,N)
       INTEGER II16, II15, II14, II13, II12, II11, II10, II9, II8, II7, 
     X   II6, II5, II4, II3, II2, II1
       II2 = N / 4
       II1 = II2 * 4 + 1
       II11 = N / 4
       II10 = II11 * 4 + 1
       II13 = N / 4
       II12 = II13 * 4 + 1
       IF (N .GT. 0) THEN

C$OMP PARALLEL IF (N .GT. 90) SHARED (N,LIST,II10) PRIVATE (II3,II4,II5,
C$OMP& II6,I,J)
C$OMP DO 
        DO I=1,N-3,4
         II3 = LIST(I)
         II4 = LIST(I+1)
         II5 = LIST(I+2)
         II6 = LIST(I+3)
         DO J=1,N-3,4
          II3 = I
          II4 = I + 1
          II5 = I + 2
          II6 = I + 3
          II3 = I
          II4 = I + 1
          II5 = I + 2
          II6 = I + 3
          II3 = I
          II4 = I + 1
          II5 = I + 2
          II6 = I + 3
          II3 = I
          II4 = I + 1
          II5 = I + 2
          II6 = I + 3
         END DO
         DO J=II10,N,1
          II3 = I
          II4 = I + 1
          II5 = I + 2
          II6 = I + 3
         END DO
         LIST(I) = II3
         LIST(I+1) = II4
         LIST(I+2) = II5
         LIST(I+3) = II6
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF
       IF (N .GT. 0) THEN
        DO I=II1,N,1
         II7 = LIST(I)
         DO J=1,N
          II7 = I
         END DO
         LIST(I) = II7
        END DO
       END IF
C$OMP PARALLEL SHARED (N,L10,I10,R10,D10,R11,II12) PRIVATE (II8,II9,II14
C$OMP& ,II15,II16,J,I)
C$OMP DO 
       DO J=1,N
        II8 = J * 2

        DO I=1,N-3,4
         L10(I,J) = 0 .EQ. MOD (I, 2)
         L10(I+1,J) = 0 .EQ. MOD (I + 1, 2)
         L10(I+2,J) = 0 .EQ. MOD (I + 2, 2)
         L10(I+3,J) = 0 .EQ. MOD (I + 3, 2)
         I10(I,J) = I + J
         I10(I+1,J) = I + J + 1
         I10(I+2,J) = I + J + 2
         I10(I+3,J) = I + J + 3
         R10(I,J) = I * J
         R10(I+1,J) = (I + 1) * J
         R10(I+2,J) = (I + 2) * J
         R10(I+3,J) = (I + 3) * J
         D10(I,J) = I * 2 + II8
         D10(I+1,J) = I * 2 + II8 + 2
         D10(I+2,J) = I * 2 + II8 + 4
         D10(I+3,J) = I * 2 + II8 + 6
         II14 = I * 3
         II15 = I * 3 + 3
         II16 = I * 3 + 6
         II9 = I * 3 + 9
         R11(I,J) = II14 * J
         R11(I+1,J) = II15 * J
         R11(I+2,J) = II16 * J
         R11(I+3,J) = II9 * J
        END DO
        DO I=II12,N,1
         L10(I,J) = 0 .EQ. MOD (I, 2)
         I10(I,J) = I + J
         R10(I,J) = I * J
         D10(I,J) = I * 2 + II8
         II9 = I * 3
         R11(I,J) = II9 * J
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       RETURN 
      END
    
      SUBROUTINE SUB1 ( N, M, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N,N), LRC
       INTEGER I10(N,N), LIST(N)
       REAL R10(N,N), R11(N,N)
       REAL*8 D10(N,N)
       INTEGER ICON
       PARAMETER (ICON = 1)
       DATA LRC/.TRUE./ 

       K = 0
       L = 1
       N1 = N / 2
       DO I=1,N1
        DO J=1,N1
         IF (L10(I,J)) THEN
          I10(I,J) = R11(L,J)
          L = L + 1
          K = K + 1
          R10(K,J) = R11(I,J)
         END IF
        END DO
       END DO

       WRITE (6, *) ' S1 = ', 0.
       RETURN 
      END
    
      SUBROUTINE SUB2 ( N, M, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N,N), LRC, LMT
       INTEGER I10(N,N), LIST(N)
       REAL R10(N,N), R11(N,N)
       REAL*8 D10(N,N)
       INTEGER ICON
       PARAMETER (ICON = 1)
       DATA LRC/.TRUE./ 

       K = 0
       L = 1
       IJ = 0
       N1 = N / 3
       DO I=1,N1
        DO J=1,N1
         IF (L .LE. 10) THEN
          I10(I,J) = R11(L,J)
          L = L + 1
          IF (I10(I,J) .GT. 3 .AND. K .LT. 10) THEN
           K = K + 1
           R10(K,J) = R11(I,J)
          ELSE
           IJ = IJ + 1
           D10(I,IJ) = I + J
          END IF
         END IF
        END DO
       END DO

       RETURN 
      END
    
      SUBROUTINE SUB3 ( N, M, L10, I10, R10, R11, D10, LIST )
       LOGICAL L10(N,N)
       INTEGER I10(N,N), LIST(N)
       REAL R10(N,N), R11(N,N)
       REAL*8 D10(N,N)
       INTEGER II3, II2, II1
       REAL RR4, RR3, RR2, RR1

       K = 0
       L = 1
       N1 = N / 3
       II3 = N1 / 4
       II2 = II3 * 4 + 1
C$OMP PARALLEL SHARED (N1,R11,LIST,R10,I10,II2,L10,K,D10,L) PRIVATE (RR1
C$OMP& ,RR2,RR3,RR4,J,I,II1)
C$OMP DO 
       DO J=1,N1
        DO I=1,N1-3,4
         RR2 = R11(I,J) + LIST(I)
         RR3 = R11(I+1,J) + LIST(I+1)
         RR4 = R11(I+2,J) + LIST(I+2)
         RR1 = R11(I+3,J) + LIST(I+3)
         R10(I,J) = RR2 + I10(I,1)
         R10(I+1,J) = RR3 + I10(I+1,1)
         R10(I+2,J) = RR4 + I10(I+2,1)
         R10(I+3,J) = RR1 + I10(I+3,1)
        END DO
        DO I=II2,N1,1
         RR1 = R11(I,J) + LIST(I)
         R10(I,J) = RR1 + I10(I,1)
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO II1=0,1
        GO TO (6), II1
        DO I=1,N1
         DO J=1,N1
          IF (L10(I,J)) THEN
           K = K + 1
           D10(K,J) = R10(I,J) * I
          END IF
         END DO
        END DO
C$OMP FLUSH
        GO TO 7
    6   DO I=1,N1
         IF (I .GT. 5) THEN
          R11(I,L) = I
          L = L + 1
         END IF
        END DO
C$OMP FLUSH
    7   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       RETURN 
      END
