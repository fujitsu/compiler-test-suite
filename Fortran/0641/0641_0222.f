      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5), RD(5,5,5)
       INTEGER*4 H
       INTEGER II4, II3, II2, II1, I1
       REAL RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
C$OMP PARALLEL SHARED (CA,CB,M,RA,RC,RD,RB,L) PRIVATE (N,II3,K,J,I1,H,
C$OMP& II1,II2,RR1,RR2,RR3,RR4,RR5,RR6,RR7,RR8,RR9,RR10,II4)
C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO II3=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            DO H=1,4,2
             CA(H,I1,J,K,II3,1,N) = H + I1 + J + K + II3 + N + 1
             CA(H+1,I1,J,K,II3,1,N) = H + I1 + J + K + II3 + N + 2
             CA(H,I1,J,K,II3,2,N) = H + I1 + J + K + II3 + N + 2
             CA(H+1,I1,J,K,II3,2,N) = H + I1 + J + K + II3 + N + 3
             CA(H,I1,J,K,II3,3,N) = H + I1 + J + K + II3 + N + 3
             CA(H+1,I1,J,K,II3,3,N) = H + I1 + J + K + II3 + N + 4
             CA(H,I1,J,K,II3,4,N) = H + I1 + J + K + II3 + N + 4
             CA(H+1,I1,J,K,II3,4,N) = H + I1 + J + K + II3 + N + 5
             CB(H,I1,J,K,II3,1,N) = H + I1 + J + K + II3 + N + 1
             CB(H+1,I1,J,K,II3,1,N) = H + I1 + J + K + II3 + N + 2
             CB(H,I1,J,K,II3,2,N) = H + I1 + J + K + II3 + N + 2
             CB(H+1,I1,J,K,II3,2,N) = H + I1 + J + K + II3 + N + 3
             CB(H,I1,J,K,II3,3,N) = H + I1 + J + K + II3 + N + 3
             CB(H+1,I1,J,K,II3,3,N) = H + I1 + J + K + II3 + N + 4
             CB(H,I1,J,K,II3,4,N) = H + I1 + J + K + II3 + N + 4
             CB(H+1,I1,J,K,II3,4,N) = H + I1 + J + K + II3 + N + 5
            END DO
            CA(5,I1,J,K,II3,1,N) = I1 + J + K + II3 + N + 6
            CA(5,I1,J,K,II3,2,N) = I1 + J + K + II3 + N + 7
            CA(5,I1,J,K,II3,3,N) = I1 + J + K + II3 + N + 8
            CA(5,I1,J,K,II3,4,N) = I1 + J + K + II3 + N + 9
            CB(5,I1,J,K,II3,1,N) = I1 + J + K + II3 + N + 6
            CB(5,I1,J,K,II3,2,N) = I1 + J + K + II3 + N + 7
            CB(5,I1,J,K,II3,3,N) = I1 + J + K + II3 + N + 8
            CB(5,I1,J,K,II3,4,N) = I1 + J + K + II3 + N + 9
           END DO
          END DO
         END DO
        END DO
        DO II3=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 6
            CA(2,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 7
            CA(3,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 8
            CA(4,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 9
            CA(5,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 10
            CB(1,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 6
            CB(2,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 7
            CB(3,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 8
            CB(4,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 9
            CB(5,I1,J,K,II3,5,N) = I1 + J + K + II3 + N + 10
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO K=1,5
        DO J=1,5
         DO H=1,5
          DO II3=1,5
           DO II1=1,5
            DO N=1,5
             RA(1,J,K) = H + J + K + II3 + II1 + N + 1
             RA(2,J,K) = H + J + K + II3 + II1 + N + 2
             RA(3,J,K) = H + J + K + II3 + II1 + N + 3
             RA(4,J,K) = H + J + K + II3 + II1 + N + 4
             RA(5,J,K) = H + J + K + II3 + II1 + N + 5
             RC(1,J,K) = H + J + K + II3 + II1 + N + 1
             RC(2,J,K) = H + J + K + II3 + II1 + N + 2
             RC(3,J,K) = H + J + K + II3 + II1 + N + 3
             RC(4,J,K) = H + J + K + II3 + II1 + N + 4
             RC(5,J,K) = H + J + K + II3 + II1 + N + 5
             RD(1,J,K) = H + J + K + II3 + II1 + N + 1
             RD(2,J,K) = H + J + K + II3 + II1 + N + 2
             RD(3,J,K) = H + J + K + II3 + II1 + N + 3
             RD(4,J,K) = H + J + K + II3 + II1 + N + 4
             RD(5,J,K) = H + J + K + II3 + II1 + N + 5
            END DO
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO II3=1,5
        DO K=1,5
         DO J=1,5
          DO H=1,5
           DO II2=1,5
            DO N=1,5
             RB(1,J,K,II3) = H + J + K + II3 + II2 + N + 1
             RB(2,J,K,II3) = H + J + K + II3 + II2 + N + 2
             RB(3,J,K,II3) = H + J + K + II3 + II2 + N + 3
             RB(4,J,K,II3) = H + J + K + II3 + II2 + N + 4
             RB(5,J,K,II3) = H + J + K + II3 + II2 + N + 5
            END DO
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO LASTPRIVATE (L)
       DO N=1,5
        DO K=1,5
         DO J=1,5
          DO II4=1,5
           RR5 = RD(1,II4,N)
           RR6 = RD(2,II4,N)
           RR7 = RD(3,II4,N)
           RR8 = RD(4,II4,N)
           DO I1=1,5
            RR1 = RA(I1,J,K) + RR5
            RR2 = RA(I1,J,K) + RR6
            RR3 = RA(I1,J,K) + RR7
            RR4 = RA(I1,J,K) + RR8

            CA(1,I1,J,K,1,II4,N) = RR1
            CA(2,I1,J,K,1,II4,N) = RR1
            CA(3,I1,J,K,1,II4,N) = RR1
            CA(4,I1,J,K,1,II4,N) = RR1
            CA(5,I1,J,K,1,II4,N) = RR1
            CA(1,I1,J,K,2,II4,N) = RR2
            CA(2,I1,J,K,2,II4,N) = RR2
            CA(3,I1,J,K,2,II4,N) = RR2
            CA(4,I1,J,K,2,II4,N) = RR2
            CA(5,I1,J,K,2,II4,N) = RR2
            CA(1,I1,J,K,3,II4,N) = RR3
            CA(2,I1,J,K,3,II4,N) = RR3
            CA(3,I1,J,K,3,II4,N) = RR3
            CA(4,I1,J,K,3,II4,N) = RR3
            CA(5,I1,J,K,3,II4,N) = RR3
            CA(1,I1,J,K,4,II4,N) = RR4
            CA(2,I1,J,K,4,II4,N) = RR4
            CA(3,I1,J,K,4,II4,N) = RR4
            CA(4,I1,J,K,4,II4,N) = RR4
            CA(5,I1,J,K,4,II4,N) = RR4
           END DO
          END DO
         END DO
        END DO
        DO K=1,5
         DO J=1,5
          DO II4=1,5
           RR10 = RD(5,II4,N)
           DO I1=1,5
            RR9 = RA(I1,J,K) + RR10

            CA(1,I1,J,K,5,II4,N) = RR9
            CA(2,I1,J,K,5,II4,N) = RR9
            CA(3,I1,J,K,5,II4,N) = RR9
            CA(4,I1,J,K,5,II4,N) = RR9
            CA(5,I1,J,K,5,II4,N) = RR9
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 

       WRITE (6, *) 'CA=', (CA(I,I,I,I,I,I,I), I=1,5)
       WRITE (6, *) 'CB=', (CB(I,I,I,I,I,I,I), I=1,5)
       WRITE (6, *) 'RA=', (RA(I,I,I), I=1,5)
       WRITE (6, *) 'RB=', (RB(I,I,I,I), I=1,5)
       WRITE (6, *) 'RC=', (RC(I,I,I), I=1,5)
       WRITE (6, *) 'RD=', (RD(I,I,I), I=1,5)
       STOP 
      END
