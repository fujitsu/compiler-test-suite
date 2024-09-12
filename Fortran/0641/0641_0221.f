      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RA(5,5,5), RB(5,5,5,5), RC(5,5,5), RD(5,5,5)
       INTEGER*4 H
       INTEGER II3, II2, II1, I1
C$OMP PARALLEL SHARED (CA,CB,M,RA,RC,RD,RB) PRIVATE (N,L,K,J,I1,H,II1,
C$OMP& II2,II3)
C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            DO H=1,4,2
             CA(H,I1,J,K,L,1,N) = H + I1 + J + K + L + N + 1
             CA(H+1,I1,J,K,L,1,N) = H + I1 + J + K + L + N + 2
             CA(H,I1,J,K,L,2,N) = H + I1 + J + K + L + N + 2
             CA(H+1,I1,J,K,L,2,N) = H + I1 + J + K + L + N + 3
             CA(H,I1,J,K,L,3,N) = H + I1 + J + K + L + N + 3
             CA(H+1,I1,J,K,L,3,N) = H + I1 + J + K + L + N + 4
             CA(H,I1,J,K,L,4,N) = H + I1 + J + K + L + N + 4
             CA(H+1,I1,J,K,L,4,N) = H + I1 + J + K + L + N + 5
             CB(H,I1,J,K,L,1,N) = H + I1 + J + K + L + N + 1
             CB(H+1,I1,J,K,L,1,N) = H + I1 + J + K + L + N + 2
             CB(H,I1,J,K,L,2,N) = H + I1 + J + K + L + N + 2
             CB(H+1,I1,J,K,L,2,N) = H + I1 + J + K + L + N + 3
             CB(H,I1,J,K,L,3,N) = H + I1 + J + K + L + N + 3
             CB(H+1,I1,J,K,L,3,N) = H + I1 + J + K + L + N + 4
             CB(H,I1,J,K,L,4,N) = H + I1 + J + K + L + N + 4
             CB(H+1,I1,J,K,L,4,N) = H + I1 + J + K + L + N + 5
            END DO
            CA(5,I1,J,K,L,1,N) = I1 + J + K + L + N + 6
            CA(5,I1,J,K,L,2,N) = I1 + J + K + L + N + 7
            CA(5,I1,J,K,L,3,N) = I1 + J + K + L + N + 8
            CA(5,I1,J,K,L,4,N) = I1 + J + K + L + N + 9
            CB(5,I1,J,K,L,1,N) = I1 + J + K + L + N + 6
            CB(5,I1,J,K,L,2,N) = I1 + J + K + L + N + 7
            CB(5,I1,J,K,L,3,N) = I1 + J + K + L + N + 8
            CB(5,I1,J,K,L,4,N) = I1 + J + K + L + N + 9
           END DO
          END DO
         END DO
        END DO
        DO L=1,5
         DO K=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,5,N) = I1 + J + K + L + N + 6
            CA(2,I1,J,K,L,5,N) = I1 + J + K + L + N + 7
            CA(3,I1,J,K,L,5,N) = I1 + J + K + L + N + 8
            CA(4,I1,J,K,L,5,N) = I1 + J + K + L + N + 9
            CA(5,I1,J,K,L,5,N) = I1 + J + K + L + N + 10
            CB(1,I1,J,K,L,5,N) = I1 + J + K + L + N + 6
            CB(2,I1,J,K,L,5,N) = I1 + J + K + L + N + 7
            CB(3,I1,J,K,L,5,N) = I1 + J + K + L + N + 8
            CB(4,I1,J,K,L,5,N) = I1 + J + K + L + N + 9
            CB(5,I1,J,K,L,5,N) = I1 + J + K + L + N + 10
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
          DO L=1,5
           DO II1=1,5
            DO N=1,5
             RA(1,J,K) = H + J + K + L + II1 + N + 1
             RA(2,J,K) = H + J + K + L + II1 + N + 2
             RA(3,J,K) = H + J + K + L + II1 + N + 3
             RA(4,J,K) = H + J + K + L + II1 + N + 4
             RA(5,J,K) = H + J + K + L + II1 + N + 5
             RC(1,J,K) = H + J + K + L + II1 + N + 1
             RC(2,J,K) = H + J + K + L + II1 + N + 2
             RC(3,J,K) = H + J + K + L + II1 + N + 3
             RC(4,J,K) = H + J + K + L + II1 + N + 4
             RC(5,J,K) = H + J + K + L + II1 + N + 5
             RD(1,J,K) = H + J + K + L + II1 + N + 1
             RD(2,J,K) = H + J + K + L + II1 + N + 2
             RD(3,J,K) = H + J + K + L + II1 + N + 3
             RD(4,J,K) = H + J + K + L + II1 + N + 4
             RD(5,J,K) = H + J + K + L + II1 + N + 5
            END DO
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER
C$OMP DO 
       DO L=1,5
        DO K=1,5
         DO J=1,5
          DO H=1,5
           DO II2=1,5
            DO N=1,5
             RB(1,J,K,L) = H + J + K + L + II2 + N + 1
             RB(2,J,K,L) = H + J + K + L + II2 + N + 2
             RB(3,J,K,L) = H + J + K + L + II2 + N + 3
             RB(4,J,K,L) = H + J + K + L + II2 + N + 4
             RB(5,J,K,L) = H + J + K + L + II2 + N + 5
            END DO
           END DO
          END DO
         END DO
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO LASTPRIVATE (M)
       DO N=1,5
        DO K=1,5
         DO L=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,1,N) = 1. - CB(1,I1,J,K,L,1,N)
            CA(2,I1,J,K,L,1,N) = 1. - CB(2,I1,J,K,L,1,N)
            CA(3,I1,J,K,L,1,N) = 1. - CB(3,I1,J,K,L,1,N)
            CA(4,I1,J,K,L,1,N) = 1. - CB(4,I1,J,K,L,1,N)
            CA(5,I1,J,K,L,1,N) = 1. - CB(5,I1,J,K,L,1,N)
            CA(1,I1,J,K,L,2,N) = 1. - CB(1,I1,J,K,L,2,N)
            CA(2,I1,J,K,L,2,N) = 1. - CB(2,I1,J,K,L,2,N)
            CA(3,I1,J,K,L,2,N) = 1. - CB(3,I1,J,K,L,2,N)
            CA(4,I1,J,K,L,2,N) = 1. - CB(4,I1,J,K,L,2,N)
            CA(5,I1,J,K,L,2,N) = 1. - CB(5,I1,J,K,L,2,N)
            CA(1,I1,J,K,L,3,N) = 1. - CB(1,I1,J,K,L,3,N)
            CA(2,I1,J,K,L,3,N) = 1. - CB(2,I1,J,K,L,3,N)
            CA(3,I1,J,K,L,3,N) = 1. - CB(3,I1,J,K,L,3,N)
            CA(4,I1,J,K,L,3,N) = 1. - CB(4,I1,J,K,L,3,N)
            CA(5,I1,J,K,L,3,N) = 1. - CB(5,I1,J,K,L,3,N)
            CA(1,I1,J,K,L,4,N) = 1. - CB(1,I1,J,K,L,4,N)
            CA(2,I1,J,K,L,4,N) = 1. - CB(2,I1,J,K,L,4,N)
            CA(3,I1,J,K,L,4,N) = 1. - CB(3,I1,J,K,L,4,N)
            CA(4,I1,J,K,L,4,N) = 1. - CB(4,I1,J,K,L,4,N)
            CA(5,I1,J,K,L,4,N) = 1. - CB(5,I1,J,K,L,4,N)
           END DO
          END DO
         END DO
        END DO
        DO K=1,5
         DO L=1,5
          DO J=1,5
           DO I1=1,5
            CA(1,I1,J,K,L,5,N) = 1. - CB(1,I1,J,K,L,5,N)
            CA(2,I1,J,K,L,5,N) = 1. - CB(2,I1,J,K,L,5,N)
            CA(3,I1,J,K,L,5,N) = 1. - CB(3,I1,J,K,L,5,N)
            CA(4,I1,J,K,L,5,N) = 1. - CB(4,I1,J,K,L,5,N)
            CA(5,I1,J,K,L,5,N) = 1. - CB(5,I1,J,K,L,5,N)
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

         DO N=1,5
          DO H=1,5
           DO L=1,5
            DO II3=1,5
             DO I1=1,5
              IF (ABS (CA(H,I1,J,K,L,II3,N)) .GE. 0.) THEN
               CB(H,I1,J,K,L,II3,N) = RA(I1,J,K)
               IF (ABS (CB(H,I1,J,K,L,II3,N)) .GE. 0.) THEN
                RB(I1,J,K,L) = CB(H,I1,J,K,L,II3,N) - 1.
                IF (RA(I1,J,K) .GE. 0.) THEN
                 RA(I1,J,K) = RA(I1,J,K) - RB(I1,J,K,L)
                 IF (RC(I1,J,K) .GE. 0.) THEN
                  RC(I1,J,K) = RA(I1,J,K)
                  IF (RD(I1,J,K) .GE. 0.) THEN
                   RD(I1,J,K) = RA(I1,J,K) - RC(I1,J,K) + I1
                  END IF
                 END IF
                END IF
               END IF
              END IF
             END DO
            END DO
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
